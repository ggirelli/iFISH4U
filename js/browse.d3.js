var barHeight = 50;

var color = d3.scaleOrdinal()
    .domain(["gneg", "gpos25", "gpos50", "gpos75", "gpos100",
        "acen", "gvar", "stalk"])
    .range(["#DDDDDD", "#9A9A9A", "#787878", "#555555", "#333333",
        "#FF0000", "#C4FFFC", "#AFE6FF"]);

var chromList = [];
for (var i = 1; i <= 22; i++) {
	chromList.push("chr" + i);
}
chromList.push("chrX");
//chromList.push("chrY");

window.xByChrom = {};
window.selectedProbes = [];

updateProbeList = function() {
	$("#selectedProbesList").children().remove();
	window.selectedProbes = [];
	$(".chromWrap circle.selected").each(function(index, data) {
		$("#selectedProbesList").append($(`<li class="mb-1">${$(data).attr("data-region")}</li>`));
		window.selectedProbes.push($(data).attr("data-name"));
	})

	if ( 0 == window.selectedProbes.length ) {
		$(".final-btn").attr("disabled", "disabled");
	} else {
		$(".final-btn").attr("disabled", null);
	}
}

plot_single_chromosome = function(chrom, chromData, chart, chartWidth, x) {
	if (typeof x === 'undefined') {
	    x = d3.scaleLinear().range([0, chartWidth])
	    	.domain([0, d3.sum(chromData, function(d) {
	    		return d.chromEnd - d.chromStart;
	    	})]);
	}
	window.xByChrom[chrom] = x;

	chart.attr("height", barHeight * 3);

	var wrapper = chart.append("g").attr("data-wrapping", "giemsa");

	var bar = wrapper.selectAll('g').data(chromData)
		.enter().append("g")
			.attr("data-region", function(d) {
				return `[${d.name}] ${d.chrom}:${d.chromStart}-${d.chromEnd} (${d.gieStain})`;
			});

	bar.filter(function(d) { return d.gieStain != "acen" })
		.append("rect")
		.attr("x", function(d) { return x(d.chromStart) })
		.attr("y", 0)
		.attr("width", function(d) { return x(d.chromEnd - d.chromStart); })
		.attr("height", barHeight - 1)
		.style("fill", function(d) { return color(d.gieStain) });

	bar.filter(function(d) { return d.gieStain == "acen" })
		.filter(function(d, i) { return i == 0 })
		.append("polyline")
		.style("fill", function(d) { return color(d.gieStain) })
		.attr("points", function(d) {
			points = `${x(d.chromStart)},0\n`;
			points += `${x(d.chromStart)},${barHeight}\n`;
			points += `${x(d.chromEnd)},${barHeight/2}\n`;
			points += `${x(d.chromStart)},0`;
			return(points)
		});
	bar.filter(function(d) { return d.gieStain == "acen" })
		.filter(function(d, i) { return i == 1 })
		.append("polyline")
		.style("fill", function(d) { return color(d.gieStain) })
		.attr("points", function(d) {
			points = `${x(d.chromEnd)},0\n`;
			points += `${x(d.chromEnd)},${barHeight}\n`;
			points += `${x(d.chromStart)},${barHeight/2}\n`;
			points += `${x(d.chromEnd)},0`;
			return(points)
		});
}

plot_all_chromosomes = function(_callback) {
	d3.json("/custom/giemsa_bands", function(d) { return(d); })
		.then(function(data) {
			chromGrouped = d3.nest().key(function(d) { return d.chrom }).entries(data);
			var chartWidth = 1920;

			window.chromSizes = [];
			chromDict = {};
			for (var i = chromGrouped.length - 1; i >= 0; i--) {
				chrom = chromGrouped[i].key;
				chromDict[chrom] = chromGrouped[i].values;
				chromSizes.push(d3.max(chromDict[chrom], function(d) { return d.chromEnd }));
			}
		    
			for (var i = 0; i < chromList.length; i++) {
				chrom = chromList[i];

				if ( !$(`#${chrom}Selector`).is(":checked") ) {
					continue;
				}

				chromData = chromDict[chrom];

		  		chartWrapper.append("div")
						.attr("class", "svgWrap")
						.attr("id", `${chrom}_svgWrap`)
					.append("h5")
						.text(`${chrom}:`);

				chartWrapper.select(`#${chrom}_svgWrap`).select("h5")
					.append("button")
						.attr("class", "btn btn-sm btn-success ml-3 select-chrom-probes")
						.attr("data-target-chrom", chrom)
						.text("add all");

		  		chartWrapper.select(`#${chrom}_svgWrap`).select("h5")
					.append("button")
						.attr("class", "btn btn-sm btn-danger ml-3 unselect-chrom-probes")
						.attr("data-target-chrom", chrom)
						.text("remove all");

				chartWrapper.select(`#${chrom}_svgWrap`)
						.attr("class", "svgWrap")
					.append("svg")
						.attr("class", `chart col col-12 chromWrap ${chrom}`)
						.attr("viewBox", `-100 0 ${chartWidth + 150} ${barHeight * 3}`)
		  				.attr("preserveAspectRatio", "xMidYMid meet")

				chart = d3.select(`#d3wrapper .chart.${chrom}`)
				    .attr("width", chartWidth);

				if ( $("#chromSameScale").is(":checked") ) {
					plot_single_chromosome(chrom, chromData, chart, chartWidth,
						d3.scaleLinear().range([0, chartWidth]).domain([0, d3.max(chromSizes)]));
				} else {
					plot_single_chromosome(chrom, chromData, chart, chartWidth);
				}
			}

			$(".chromWrap g[data-wrapping='giemsa'] g").mouseover(function() {
				$("#regionInfo")[0].value = "Cytoband: " + $(this).attr("data-region");
			});
			$(".chromWrap g[data-wrapping='giemsa'] g").mouseout(function() {
				$("#regionInfo")[0].value = "";
			});
			$(".select-chrom-probes").click(function(e) {
				chrom = $(this).attr("data-target-chrom");
				$(`.chromWrap.${chrom} circle`).each(function(index, probe) {
					if ( !$(probe).hasClass("selected") ) {
						$(probe).addClass("selected");
					}
				});

				updateProbeList();
			});
			$(".unselect-chrom-probes").click(function(e) {
				chrom = $(this).attr("data-target-chrom");
				$(`.chromWrap.${chrom} circle`).each(function(index, probe) {
					if ( $(probe).hasClass("selected") ) {
						$(probe).removeClass("selected");
					}
				});

				updateProbeList();
			});
		}
	).then(_callback);
}

plot_all_probes = function() {
		d3.json("/custom/probe_list", function(d) { return(d); })
		.then(function(data) {
			chromGrouped = d3.nest().key(function(d) { return d.chrom }).entries(data);
			
			chromDict = {};
			for (var i = chromGrouped.length - 1; i >= 0; i--) {
				chrom = chromGrouped[i].key;
				chromDict[chrom] = chromGrouped[i].values;
			}

			for (var i = 0; i < chromList.length; i++) {
				chrom = chromList[i];

				if ( !$(`#${chrom}Selector`).is(":checked") ) {
					continue;
				}

				chromData = chromDict[chrom];

				var chart = d3.select(`#d3wrapper .chart.${chrom}`);
				var wrapper = chart.append("g").attr("data-wrapping", "probes");
				var probe = wrapper.selectAll("g")
						.data(chromData)
					.enter().append("g")
						.filter(function(d) {
							return -1 == $.inArray(d.name, window.selectedProbes)
						});
				probe.append("circle")
					.attr("cx", function(d) { return xByChrom[chrom]((d.chromStart + d.chromEnd) / 2) })
					.attr("cy", barHeight * 2)
					.attr("r", barHeight * .25)
					.attr("data-region", function(d) {
						return `[${d.name}] ${d.chrom}:${d.chromStart}-${d.chromEnd}`;
					})
					.attr("data-name", function(d) { return d.name; });

				var selWrapper = chart.append("g").attr("data-wrapping", "selected-probes");
				var selectedProbe = selWrapper.selectAll("g")
						.data(chromData)
					.enter().append("g")
						.filter(function(d) {
							return -1 != $.inArray(d.name, window.selectedProbes)
						});
				selectedProbe.append("circle")
					.attr("cx", function(d) { return xByChrom[chrom]((d.chromStart + d.chromEnd) / 2) })
					.attr("cy", barHeight * 2)
					.attr("r", barHeight * .25)
					.attr("data-region", function(d) {
						return `[${d.name}] ${d.chrom}:${d.chromStart}-${d.chromEnd}`;
					})
					.attr("data-name", function(d) { return d.name; })
					.attr("class", "selected");
			}

			$(".chromWrap circle").mouseover(function() {
				$("#regionInfo")[0].value = "Probe: " + $(this).attr("data-region");
			});
			$(".chromWrap circle").mouseout(function() {
				$("#regionInfo")[0].value = "";
			});

			$(".chromWrap circle").click(function() {
				if ( $(this).hasClass("selected") ) {
					$(this).removeClass("selected");
				} else {
					$(this).addClass("selected");
				}
				
				updateProbeList();
			});
		}
	).then(updateProbeList);
}

refreshPlot = function() {
	$("#d3wrapper").children().remove();
	plot_all_chromosomes(plot_all_probes);
}

$(document).ready(function() {

	window.chartWrapper = d3.select("#d3wrapper")

	for (var i = 0; i < chromList.length; i++) {
		chrom = chromList[i];
		$("#chromSelector .chromList").append(
			$(`<label class="col col-6 col-sm-4 col-md-4 col-xl-4"><input type='checkbox' id='${chrom}Selector' checked/>&nbsp;${chrom}</label>`));
	}

	refreshPlot();
	$("#chromSameScale").change(refreshPlot)
	$("#chromSelector .chromList input").change(refreshPlot)

	$("#showAllIdeograms").change(function() {
		if ( $(this).is(":checked") ) {
			$("#d3wrapper").css({"height" : "auto"});
		} else {
			$("#d3wrapper").css({"height" : "400px"});
		}
	});

	$("#regionFilter").submit(function(e) {
		$.get(`/custom/probe_list/pos/${$(this).children('input').val()}`, {},
			function(data) {
				nProbes = 0;
				for (var i = data.length - 1; i >= 0; i--) {
					probe = data[i];
					probe = $(`circle[data-name="${probe.name}"]`);
					if ( !probe.hasClass("selected") ) {
						probe.addClass("selected");
						nProbes++;
					}
				}
				alert(`${nProbes} probes added to selection.`);
				$('#regionFilter input').val("");
			}, 'json').then(updateProbeList);

		$(document).ajaxError(function() {
			alert(`Region '${$('#regionFilter input').val()}' not recognized.`);
			$('#regionFilter input').val("");
		});

		e.preventDefault();
	});

	$("#request-btn").click(function(e) {
		alert("Send us an email at ifish4u@gmail.com," +
			" attaching the selected probes after downloading them." +
			" You will now be redirected to your e-mail software." +
			" (might take a few moments)");
		window.location.href = "mailto:ifish4u@gmail.com";
		e.preventDefault();
	});
	$("#download-btn").click(function(e) {
		alert("Option not yet available.");
		e.preventDefault();
	});
})
