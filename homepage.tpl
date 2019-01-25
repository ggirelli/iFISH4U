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
					<b>Short abstract explaining what is available in this homepage.</b> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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
				<div class="col col-xl-6 col-12 text-left">
					<b>Here, reference to the iFISH paper and additional details?</b>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</div>
				<div id="links-list" class="col col-xl-6 col-12 text-left">
					<h4>Useful links...</h4>
					<ul>
						<li>
							<a href="#">A link...</a>
						</li>
						<li>
							<a href="#">A link...</a>
						</li>
						<li>
							<a href="#">A link...</a>
						</li>
						<li>
							<a href="#">A link...</a>
						</li>
						<li>
							<a href="#">A link...</a>
						</li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</div>

% include('footer_new.tpl')
