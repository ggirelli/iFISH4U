% include('header.tpl')

<link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,800|Open+Sans" rel="stylesheet">
<style type="text/css">

html, body {
	background-color: #fafafa;
	font-family: 'Open Sans', sans-serif;
}

h1, h2, h3, h4 {
	font-family: 'Montserrat', sans-serif;
	font-weight: 800;
}

#new_title {
	margin-bottom: .75vw;
	font-size: 15vw;
	text-align: center;
	color: #323232;
	font-weight: 600;
}

@media screen and (min-width: 1200px) {
  #new_title {
    font-size: 7.5vw;
    margin-bottom: 1.5vw;
  }
}

#abstract {
	margin-bottom: 1em;
	font-size: 1.2em;
	text-align: justify;
}

.main-btn-wrap {
	padding: .5em;
	border-radius: 0;
	vertical-align: middle;
}

.main-btn {
	display: block;
	position: relative;
	margin-bottom: 0 !important;
	padding: 0;
	min-height: 2em;
	max-height: 20em;
	width: 100%;
	font-size: 1em !important;
	overflow: hidden;
	color: black;
}

.main-btn img {
	display: inline;
	height: auto;
	width: 100%;
	opacity: .75;
}
.main-btn:hover img {
	opacity: 1;
}

#browse-btn img {
	content: url("/custom_images/browse.jpg");
}

#design-btn img {
	content: url("/custom_images/design.jpg");
}

#download-btn img {
	content: url("/custom_images/download.jpg");
}

#install-btn img {
	content: url("/custom_images/install.jpg");
}

.main-btn span {
	position: absolute;
	bottom: 2px;
	left: 2px;
	right: 2px;
	padding: .5em 0;
	background-color: rgba(255, 255, 255, .95);
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
	font-family: 'Montserrat', sans-serif;
	font-size: 1.2em;
	font-weight: 600;
	text-transform: capitalize;
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

</style>

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
						<img><span>Browse probes</span>
					</a>
				</div>
				<div class="col col-xl-6 btn main-btn-wrap" id="design-btn">
					<a role="button" class="btn main-btn" href="probe-design/">
						<img><span>Design probes</span>
					</a>
				</div>
			</div>			

			<div class="row">
				<div class="col col-xl-6 btn main-btn-wrap" id="download-btn">
					<a role="button" class="btn main-btn" href="download">
						<img><span>Download</span>
					</a>
				</div>
				<div class="col col-xl-6 btn main-btn-wrap" id="install-btn">
					<a role="button" class="btn main-btn" href="https://ggirelli.github.io/iFISH-probe-design/install">
						<img><span>Install</span>
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

% include('footer_new.tpl')
