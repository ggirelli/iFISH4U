% include('header.tpl')

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,600,800|Open+Sans" rel="stylesheet">
<link href="/custom_css/style.css" rel="stylesheet">

<div id="main" class="col col-xl-6 offset-xl-3 col-lg-12">

	<div class="row">
		<div class="col col-xl-12">

			<h1 id="new_title">Download</h1>

			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="dropdown">
						<a href="" id="dropdownMenuButton" class="fas fa-bars dropdown-toggle mr-3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item inactive" href="/browse">Browse</a>
							<a class="dropdown-item" href="/probe-design/">Design</a>
							<a class="dropdown-item" href="https://ggirelli.github.io/iFISH-probe-design/install">Install</a>
						</div>
					</li>
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Download</li>
				</ol>
			</nav>
	
			<div id="abstract" class="row">
				<div class="col col-12">
					<p>
						Here you can download our <a href="https://ggirelli.github.io/iFISH-probe-design/database" target="_doc">databases</a> of oligonucleotide sequences. The software needed to run our probe design tool locally on your machine can be downloaded from its <a href="http://github.com/ggirelli/iFISH-probe-design">github repository</a>. You can find all the instructions on how to install and run our software <a href="https://ggirelli.github.io/iFISH-probe-design/install" target="_new">here</a>. As we are continuously designing new oligo databases, please check this page regularly to see which new databases have been added.<br/>
						<small>All files are available in <code>gzip</code> format (<code>.gz</code>), more info <a href="https://fileinfo.com/extension/gz" target="_new">here</a>.</small><br/>
						<small><b>Note:</b> the files below need to be formatted with <a href="https://ggirelli.github.io/iFISH-probe-design/scripts#ifpd_mkdb" target="_doc"><code>ifpd_mkdb</code></a> before they can be used.</small>
					</p>
				</div>

				<div class="col col-12">
					<table class="table table-bordered">
						<tr>
							<th>Type</th>
							<th>Parameters</th>
							<th>Download</th>
						</tr>
						<tr>
							<td>Full 40-mer</td>
							<td>
								<ul>
									<li>40-mers</li>
									<li>35-80% GC-content</li>
									<li>&plusmn;10 &deg;C Tm range around the average</li>
									<li>7+ nt homopolymer filter</li>
									<li>70% homology threshold</li>
									<li>65 &deg;C secondary structure temperature</li>
								</ul>
							</td>
							<td>
								<table class="table table-striped">
									<tr><td class="text-center"><a href="/custom/dbdownload/hg19">hg19</a> <small>(568 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr1">chr1</a> <small>(43 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr2">chr2</a> <small>(46 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr3">chr3</a> <small>(38 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr4">chr4</a> <small>(36 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr5">chr5</a> <small>(34 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr6">chr6</a> <small>(33 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr7">chr7</a> <small>(29 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr8">chr8</a> <small>(28 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr9">chr9</a> <small>(22 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr10">chr10</a> <small>(26 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr11">chr11</a> <small>(26 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr12">chr12</a> <small>(26 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr13">chr13</a> <small>(19 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr14">chr14</a> <small>(17 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr15">chr15</a> <small>(16 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr16">chr16</a> <small>(15 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr17">chr17</a> <small>(15 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr18">chr18</a> <small>(15 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr19">chr19</a> <small>(11 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr20">chr20</a> <small>(12 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr21">chr21</a> <small>(6,7 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chr22">chr22</a> <small>(6,6 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chrX">chrX</a> <small>(28 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/chrom/chrY">chrY</a> <small>(2,7 Mb)</small></td></tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>Clean 40-mer</td>
							<td>
								<ul>
									<li>40-mers</li>
									<li>35-80% GC-content</li>
									<li>&plusmn;10 &deg;C Tm range around the average</li>
									<li>7+ nt homopolymer filter</li>
									<li>70% homology threshold</li>
									<li>65 &deg;C secondary structure temperature</li>
									<li><b>5+ mismatches filter</b></li>
								</ul>
							</td>
							<td>
								<table class="table table-striped">
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/hg19">hg19</a> <small>(505 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr1">chr1</a> <small>(39 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr2">chr2</a> <small>(41 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr3">chr3</a> <small>(34 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr4">chr4</a> <small>(32 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr5">chr5</a> <small>(31 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr6">chr6</a> <small>(29 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr7">chr7</a> <small>(26 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr8">chr8</a> <small>(25 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr9">chr9</a> <small>(20 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr10">chr10</a> <small>(23 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr11">chr11</a> <small>(23 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr12">chr12</a> <small>(23 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr13">chr13</a> <small>(17 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr14">chr14</a> <small>(16 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr15">chr15</a> <small>(14 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr16">chr16</a> <small>(14 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr17">chr17</a> <small>(14 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr18">chr18</a> <small>(14 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr19">chr19</a> <small>(8,7 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr20">chr20</a> <small>(11 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr21">chr21</a> <small>(6,0 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chr22">chr22</a> <small>(6,0 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chrX">chrX</a> <small>(24 Mb)</small></td></tr>
									<tr><td class="text-center"><a href="/custom/dbdownload/clean/chrom/chrY">chrY</a> <small>(2,5 Mb)</small></td></tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>
</div>

% include('footer_new.tpl')
