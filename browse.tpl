% include('header.tpl')

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,800|Open+Sans" rel="stylesheet">

<link href="/custom_css/style.css" rel="stylesheet">
<link href="/custom_css/browse.css" rel="stylesheet">

<script src="https://d3js.org/d3.v5.min.js"></script>
<script type="text/javascript" src ="/custom_js/browse.d3.js"></script>

<div id="main" class="col col-xl-6 offset-xl-3 col-lg-12">

	<div class="row">
		<div class="col col-xl-12">

			<h1 id="new_title">Browse</h1>

			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="dropdown">
						<a href="" id="dropdownMenuButton" class="fas fa-bars dropdown-toggle mr-3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="/probe-design/">Design</a>
							<a class="dropdown-item" href="/download">Download</a>
							<a class="dropdown-item" href="https://ggirelli.github.io/iFISH-probe-design/install">Install</a>
						</div>
					</li>
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Browse</li>
				</ol>
			</nav>
	
			<div id="abstract" class="row">
				<div class="col col-xl-12">
					<p>On this page, you can browse all the probes currently present in the iFISH repository, and see which probes have been individually tested and validated. All the probes are specific for the human genome. As we are continuously expanding our repository, please check this page regularly to see which new probes have been added.</p>

					<p>If you are interested in using these probes, we can provide PCR products for single or multiple probes, which you can then <i>in vitro</i> transcribe and convert to ready-to-use single-stranded DNA probes. As we are a non-profit academic research group, we will only charge you with the shipping fee and a small contribution for the maintenance of our repository.</p>

					<p>To request PCR products, please select one or more probes, click ‘Request PCR products for these probes’, and then send us the downloaded list with a request email to ifish4u@gmail.com. We will then contact you back to discuss the shipment and payment details.</p>
					
				</div>
			</div>

			<h1 style="color: red;">!Work in progress!</h1>

			<p>
				<h2>New D3 based interface</h2>

				<small class="mb-3">Please note that all our iFISH probes were designed on the <code>hg19</code> reference genome.</small>

				<form>
					<div class="card mb-3">
						<div class="card-body" id="chromSelector">
							<h5 class="card-title">Select chromosomes of interest:</h5>
							<div class="chromList"></div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col col-6"><a class="btn btn-success btn-block" role="button" href="javascript:$('#chromSelector .chromList input').prop('checked', true);refreshPlot();">
							Select all chromosomes
						</a></div>
						<div class="col col-6"><a class="btn btn-danger btn-block" role="button" href="javascript:console.log(1);$('#chromSelector .chromList input').prop('checked', false);refreshPlot();">
							Unselect all chromosomes
						</a></div>
					</div>
					<p>
						<label><input type="checkbox" id="chromSameScale" checked> Use the same scale for all chromosomes</label><br />
						<label><input type="checkbox" id="fitTopage" checked> Fit ideograms to the page (use scrollbar)</label>
					</p>
					<input type="text" id="regionFilter" class="form-control mb-3" placeholder="Write a region here to search select all probes in it. e.g., chr1:1000000-2000000" />
					<input type="text" id="regionInfo" class="form-control mb-3" placeholder="Hover over a cytoband/probe to view its details here." />
				</form>
				<div id="d3wrapper"></div>
			</p>

		</div>
	</div>
</div>

% include('footer_new.tpl')
