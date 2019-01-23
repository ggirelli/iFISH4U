% include('header.tpl')

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,800|Open+Sans" rel="stylesheet">
<style type="text/css">

html, body {
	padding-top: 3em;
	background-color: #fafafa;
	font-family: 'Open Sans', sans-serif;
}

h1, h2, h3, h4 {
	font-family: 'Montserrat', sans-serif;
	font-weight: 800;
}

a {
	color: #F8B500 !important;
}

a:hover {
	color: #FC3C3C !important;
}

.banner {
	display: block;
	min-height: 6em;
	
	background-image: url("/custom_images/title_background.png");
	background-size: contain;
	background-position: middle;
}

.banner.top {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 1;
}

.banner.bottom {
	position: fixed;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: 1;
}

#new_title {
	margin-bottom: .75vw;
	color: #00ADB5;
	font-size: 15vw;
	font-weight: 600;
	text-align: center;
}

@media screen and (min-width: 1200px) {
  #new_title {
    font-size: 7.5vw;
    margin-bottom: 1.5vw;
  }
}

#abstract {
	margin-bottom: 1.5em;
	font-size: 1.2em;
	text-align: justify;
}

.main-btn-wrap {
	padding: .5em;
	margin-bottom: 2em;
	border-radius: 0;
	vertical-align: middle;
}

.main-btn {
	display: block;
	position: relative;
	margin-bottom: 0 !important;
	padding: 0 0.5em;
	width: 100%;
	color: #323232;
	font-size: 1em !important;
	overflow: hidden;
	vertical-align: middle;
}

.main-btn:hover {
	color: #ED7528;
}

.main-btn .fas {
	display: block;
	margin: 0;
	font-size: 7em;
}

.main-btn .description {
	display: block;
	margin-top: 0.2em;
	font-family: 'Montserrat', sans-serif;
	font-size: 1.8em;
	font-weight: 600;
	letter-spacing: -.25px;
}

#bottom-text-wrap {
	margin-top: 1em;
}

#bottom-text-wrap .col {
	margin-bottom: 1.5em;
}

#links-list {
	border-left: 3px double #989898;
}

@media screen and (max-width: 1200px) {
	#links-list {
		border-left: none;
	}
}

#footer {
	z-index: 2;
}

</style>

<div class="banner top"></div>

<div id="main" class="col col-xl-6 offset-xl-3 col-lg-12">

	<div class="row">
		<div class="col col-xl-12">

			<h1 id="new_title">iFISH4U</h1>

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
				<div class="col col-xl-6 btn main-btn-wrap" id="browse-btn">
					<a role="button" class="btn main-btn" href="browse">
						<span class="fas fa-search"></span>
						<span class="description">Browse</span>
					</a>
				</div>
				<div class="col col-xl-6 btn main-btn-wrap" id="design-btn">
					<a role="button" class="btn main-btn" href="probe-design/">
						<span class="fas fa-pencil-alt"></span>
						<span class="description">Design</span>
					</a>
				</div>
			</div>			

			<div class="row">
				<div class="col col-xl-6 btn main-btn-wrap" id="download-btn">
					<a role="button" class="btn main-btn" href="download">
						<span class="fas fa-download"></span>
						<span class="description">Download</span>
					</a>
				</div>
				<div class="col col-xl-6 btn main-btn-wrap" id="install-btn">
					<a role="button" class="btn main-btn" href="https://ggirelli.github.io/iFISH-probe-design/install">
						<span class="fas fa-wrench"></span>
						<span class="description">Install</span>
					</a>
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

<div class="banner bottom"></div>

% include('footer_new.tpl')
