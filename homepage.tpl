% include('header.tpl')

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,800|Open+Sans" rel="stylesheet">
<link href="/custom_css/style.css" rel="stylesheet">

<div id="main" class="col col-xl-6 offset-xl-3 col-lg-12">

	<div class="row">
		<div class="col col-xl-12">

			<h1 id="new_title">iFISH4U</h1>

			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" arai-current="page">Home</li>
				</ol>
			</nav>

			<div id="abstract" class="row">
				<div class="col col-xl-12">
					<p>Welcome to <b>iFISH4U</b>! If you have landed here, chances are high that you are interested in DNA FISH (fluorescence <i>in situ</i> hybridization, not the animal) and that you are looking for user-friendly tools for designing FISH probes against your genomic target(s) of interest. You might also want to see which probes are already available and have been tested by us, and request them for a trial. If this is the case, you have come to the right place!</p>

					<p>This website will enable you to fully benefit from iFISH: a free and comprehensive resource, which we built, consisting of user-friendly tools for designing oligonucleotide-based DNA FISH probes, and of a growing repository of probes against multiple genomic targets, which we have already tested and validated.</p>

					<p>Here, you can <a href="/browse">browse</a> and request available probes, <a href="/probe-design/">design</a> new ones, <a href="/download">download</a> our databases of oligonucleotide sequences, and learn how to <a href="https://ggirelli.github.io/iFISH-probe-design/install">install</a> our tools on your own machine.</p>

					<p>We hope that you will find this website useful, and please let us know how we should improve.</p>
				</div>
			</div>

				<div class="row">
					<div class="col col-6 col-md-3 col-lg-3 col-xg-3 btn main-btn-wrap" id="browse-btn">
						<a role="button" class="btn main-btn" href="browse">
							<span class="fas fa-search"></span>
							<span class="description">Browse</span>
						</a>
					</div>
					<div class="col col-6 col-md-3 col-lg-3 col-xg-3 btn main-btn-wrap" id="design-btn">
						<a role="button" class="btn main-btn" href="probe-design/">
							<span class="fas fa-pencil-alt"></span>
							<span class="description">Design</span>
						</a>
					</div>
					<div class="col col-6 col-md-3 col-lg-3 col-xg-3 btn main-btn-wrap" id="download-btn">
						<a role="button" class="btn main-btn" href="download">
							<span class="fas fa-download"></span>
							<span class="description">Download</span>
						</a>
					</div>
					<div class="col col-6 col-md-3 col-lg-3 col-xg-3 btn main-btn-wrap" id="install-btn">
						<a role="button" class="btn main-btn" href="https://ggirelli.github.io/iFISH-probe-design/install">
							<span class="fab fa-python"></span>
							<span class="description">Install</span>
						</a>
					</div>
				</div>
			</div>

			<div id="bottom-text-wrap" class="row">
				<div class="col col-12 text-left mb-0">
					<h4>News</h4>
					<ul>
						<li>
							<b>2019-09-11</b>: released <code>ifpd v2.0.3.post2</code>, fixing a bug crashing the web interface due to a missing str2int conversion.
						</li>
						<li>
							<b>2019-07-24</b>: released <code>ifpd v2.0.3.post1</code>, fixing a bug crashing the web interface when no CUSTOm flags are present in a database.
						</li>
						<li>
							<b>2019-05-29</b>: released <code>ifpd v2.0.3</code>, fixing a few bugs in the design pipeline/interface. Check out the <a href="https://github.com/ggirelli/iFISH-probe-design/releases/tag/v2.0.3">changelog</a> for details! Do not forget to report any bugs you encounter, or request new features, by opening a ticket <a href="https://github.com/ggirelli/iFISH-probe-design/issues">here</a> or dropping us an <a href="mailto:ifh4u@gmail.com">email</a>.
						</li>
					</ul>
				</div>
				<div class="col col-xl-6 col-12 text-left">
					<h4>Contact us</h4>
					<p>For questions and feedback on this website, and to request iFISH probes, please contact us at <a href="mailto:ifh4u@gmail.com">ifh4u@gmail.com</a></p>
					<h4>Credits</h4>
					<p>iFISH4U was designed and implemented by G. Girelli, from scratch.<br/>Background FISH image by E. Gelali.</p>
				</div>
				<div id="links-list" class="col col-xl-6 col-12 text-left">
					<h4>Useful links...</h4>
					<ul>
						<li>
							Check out our iFISH paper <a href="https://www.nature.com/articles/s41467-019-09616-w" target="_paper">on Nature Communications</a>.
						</li>
						<li>
							Check out <a href="https://link.springer.com/protocol/10.1007/978-1-4939-7768-0_17" target="_new">our book chapter</a>, where we describe the DNA FISH protocols that we routinely use in our lab.
						</li>
						<li>
							iFISH4U is offered by the <a href="https://bienkocrosettolabs.org/" target="_new">Bienko and Crosetto labs</a>. Please visit our website to learn what we are interested in and what we do.
						</li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</div>

% include('footer_new.tpl')
