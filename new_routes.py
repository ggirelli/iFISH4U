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