from bottle import request, response, static_file
import hashlib
import pandas as pd
import time

pdApp.tprefix = "iFISH4U|Probe Design|"
pdApp.vd['breadcrumbs'] = True
pdApp.vd['SHOW_COOKIE_CONSENT_BANNER'] = True
pdApp.vd['menu_template'] = "design_menu.tpl"

class EnableCors(object):
	'''https://stackoverflow.com/a/17262900/1593536'''
    name = 'enable_cors'
    api = 2
    def apply(self, fn, context):
        def _enable_cors(*args, **kwargs):
            # set CORS headers
            response.headers['Access-Control-Allow-Origin'] = '*'
            response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, OPTIONS'
            response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'
            if request.method != 'OPTIONS':
                # actual request; reply with the actual response
                return fn(*args, **kwargs)
        return _enable_cors
pdApp.install(EnableCors())

@root.route("/browse")
@root.route("/browse/")
@bot.view("browse")
def callback():
	d = {}
	d['custom_stylesheets'] = []
	d['title'] = "iFISH4U|Browse"
	d['description'] = "Browse iFISH probes."
	return d

@root.route("/download")
@root.route("/download/")
@bot.view("download")
def callback():
	d = {}
	d['custom_stylesheets'] = []
	d['title'] = "iFISH4U|Download"
	d['description'] = "Download iFISH databases."
	return d

@root.route('/custom_images/<path>')
def callback(path):
    return bot.static_file(path, f'{os.path.dirname(args.custom_routes)}/images/')

@root.route('/custom_css/<path>')
def callback(path):
    return bot.static_file(path, f'{os.path.dirname(args.custom_routes)}/css/')

@root.route('/custom_js/<path>')
def callback(path):
    return bot.static_file(path, f'{os.path.dirname(args.custom_routes)}/js/')

@root.route('/custom_data/<path>')
def callback(path):
    return bot.static_file(path, f'{os.path.dirname(args.custom_routes)}/data/')

@root.route('/custom/giemsa_bands')
def callback():
	giemsa = pd.read_csv(os.path.join(os.path.dirname(args.custom_routes), 'data', 'hg19.giemsa_bands.txt'), "\t")
	return giemsa.to_json(orient = 'records')

@root.route('/custom/giemsa_bands/chr/<chrom>')
def callback(chrom):
	giemsa = pd.read_csv(os.path.join(os.path.dirname(args.custom_routes), 'data', 'hg19.giemsa_bands.txt'), "\t")
	giemsa = giemsa.loc[giemsa['chrom'] == chrom]
	giemsa = giemsa.reset_index()
	return giemsa.to_json(orient = 'records')

@root.route('/custom/probe_list')
def callback():
	probes = pd.read_csv(
		os.path.join(os.path.dirname(args.custom_routes),
			'data', 'tda_dna-unifish_oligopool_chr_spotting.bed'),
		'\t')
	return probes.to_json(orient = "records")

@root.route('/custom/probe_list/pos/<chrom>\:<chromStart>-<chromEnd>')
def callback(chrom, chromStart, chromEnd):
	probes = pd.read_csv(os.path.join(os.path.dirname(args.custom_routes),
		'data', 'tda_dna-unifish_oligopool_chr_spotting.bed'), '\t')
	probes = probes.loc[probes['chrom'].values == chrom, :]
	probes = probes.loc[probes['chromStart'].values >= int(chromStart), :]
	probes = probes.loc[probes['chromEnd'].values <= int(chromEnd), :]
	return probes.to_json(orient = "records")

@root.get('/custom/probe_download/')
def callback():
	GET = dict(request.query)
	probeList = GET['probes'].replace("[", "").replace("]", "").split(",")
	withPrimers = int(GET['primers']) == 1
	fastaTotal = [""]
	for probeName in probeList:
		probeName = probeName.strip('"')
		if withPrimers:
			probePath = f'{probeName}.with_primers.fa'
		else:
			probePath = f'{probeName}.fa'
		probePath = os.path.join(os.path.dirname(args.custom_routes),
			'data', 'probes', probePath)
		if not os.path.isfile(probePath):
			return f'ERROR: cannot find probe "{probeName}".'
		else:
			with open(probePath, 'r') as IH:
				fastaTotal.append("".join(IH.readlines()))

	encoder = hashlib.sha256()
	encoder.update(bytes(str(time.time()), "utf-8"))
	fastaName = encoder.hexdigest()
	response.set_header('Content-Disposition',
		f'attachment; filename="{fastaName}.fa"')
	response.set_header('Content-Type', 'plain/txt')

	return "".join(fastaTotal).strip()

@root.route('/custom/dbdownload/hg19')
def callback():
	return static_file('iFISH.40mer.tsv.gz',
		os.path.join(os.path.dirname(args.custom_routes),
			'data', 'databases'),
		mimetype = 'application/gzip')

@root.route('/custom/dbdownload/clean/hg19')
def callback():
	return static_file('iFISH.40mer.clean.tsv.gz',
		os.path.join(os.path.dirname(args.custom_routes),
			'data', 'databases'),
		mimetype = 'application/gzip')

@root.route('/custom/dbdownload/chrom/<chrom>')
def callback(chrom):
	return static_file(f'{chrom}.gz',
		os.path.join(os.path.dirname(args.custom_routes),
			'data', 'databases', 'iFISH.40mer.singleChr'),
		download = f'iFISH.40mer.{chrom}.gz',
		mimetype = 'application/gzip')

@root.route('/custom/dbdownload/clean/chrom/<chrom>')
def callback(chrom):
	return static_file(f'{chrom}.gz',
		os.path.join(os.path.dirname(args.custom_routes),
			'data', 'databases', 'iFISH.40mer.clean.singleChr'),
		download = f'iFISH.40mer.clean.{chrom}.gz',
		mimetype = 'application/gzip')