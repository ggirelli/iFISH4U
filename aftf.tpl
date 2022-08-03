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
							<a class="dropdown-item" href="/aftf">Order</a>
						</div>
					</li>
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Browse</li>
				</ol>
			</nav>
	
			<div id="abstract" class="row">
				<div class="col col-xl-12">

					<p>
						Our <a href="https://www.scilifelab.se/units/advanced-fish-technologies/" target="_blank">Advanced FISH Technologies(AFT) Facility</a>
						offers the following main services, which can be delivered alone or in combination:
					</p>

					<ul>
						<li>
							Design of DNA/RNA smFISH probes against any organism of interest for which a reference genome/transcriptome is available (service area 1)
						</li>
						<li>
							Enzymatic production of smFISH probes starting from oligopools, either already available at our unit or custom-designed and purchased for the user (service area 2)
						</li>
						<li>
							DNA/RNA smFISH on fixed cells, frozen and FFPE tissue sections (service area 3)
						</li>
					</ul>

					<p>
						If you would like to request a service or consultation please create an account in iLab.
					</p>
					
					<p>
						For staff at Karolinska Intitutet, login <a href="https://karolinska.corefacilities.org/service_center/show_external/3723" target="_blank">here</a>
						using your SWAMID (KIID) credentials.
					</p>

					<p>
						If you are outside the KI network please complete the registration form on the
						<a href="https://karolinska.corefacilities.org/account/1037/signup?sc_id=3723" target="_blank">sign-up page</a>
						and you will receive a <i>Welcome Email</i> from iLab (typically within one business day) with your login credentials.
					</p>

				</div>
			</div>

			<p>
				Non ex sunt minim incididunt id irure qui cillum et minim sunt veniam reprehenderit ut. Sunt sunt sint veniam fugiat.
				Commodo laboris est cupidatat consectetur reprehenderit id anim anim consequat enim sit sunt eu nostrud.
				Minim eiusmod adipisicing ut duis nisi dolor magna do. Culpa sint enim sunt sit aliqua quis quis magna officia laboris commodo pariatur.
			</p>

		</div>
	</div>
</div>

% include('footer_new.tpl')
