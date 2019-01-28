import pandas as pd

pdApp.tprefix = "iFISH4U|Probe Design|"
pdApp.vd['breadcrumbs'] = True
pdApp.vd['SHOW_COOKIE_CONSENT_BANNER'] = True
pdApp.vd['menu_template'] = "design_menu.tpl"

@root.route("/browse")
@bot.view("browse")
def callback():
	d = {}
	d['custom_stylesheets'] = []
	d['title'] = "iFISH4U|Browse"
	d['description'] = "Browse iFISH probes."
	return d

@root.route("/download")
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
