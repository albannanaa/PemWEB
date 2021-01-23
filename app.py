from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL

app = Flask(__name__)

db = MySQL(app) 

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_PORT"] = 3306
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "biodata"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

@app.route('/')
def main():
    return render_template("index.html")

@app.route('/about')
def about():
	con = db.connection
	with con.cursor() as cursor:
		query = "select * from about"
		cursor.execute(query)
		return render_template("biodata.html", db = cursor.fetchone())

@app.route('/porto')
def porto():
	con = db.connection
	with con.cursor() as cursor:
		query = "select * from about"
		cursor.execute(query)
		return render_template("porto.html", db = cursor.fetchone())

@app.route('/porto/create')
def portopost():
	if request.method == "GET":
		return render_template("porto.html")
	elif request.method == "POST":
		data = dict(request.form)
		files = request.files["image"]
		cursor = con.cursor()
		newfilename = generateRandomString() + '.' + files.filename.split(".")[-1]
		cursor.execute("INSERT INTO about(photo) VALUES(%s)", (newfilename))
		files.save("static/img/" + newfilename)
		con.commit()
		return redirect(url_for('porto'))

#@app.route("/porto/delete/<id>")
#def deleteporto(id):
#   con = db.connection
#    cursor = con.cursor()
#    cursor.execute("DELETE FROM blog WHERE id = %s", (id, ))
#    con.commit()
#    return redirect(url_for('porto'))



@app.route('/blog')
def blog():
	con = db.connection
	with con.cursor() as cursor:
		query = "select * from about"
		cursor.execute(query)
		about = cursor.fetchone()

		query = "select * from post"
		cursor.execute(query)
		post = cursor.fetchall()
		return render_template("post.html", db = about, post = post)

@app.route("/blog/create", methods = ["GET", "POST"])
def blogpost():
	data = dict(request.form)
	con = db.connection
	if request.method == "GET":
		with con.cursor() as cursor:	
			query = "select * from post"
			cursor.execute(query)
			post = cursor.fetchall()
			query = "select * from about"
			cursor.execute(query)
			about = cursor.fetchone()
			return render_template("blog.html",db = about, post = post)
	elif request.method == "POST":
		with con.cursor() as cursor:
			query = "INSERT into post(judul, isi) values(%s, %s)"
			cursor.execute(query,(data['judul'], data['isi']))
			con.commit()
			return redirect(url_for('blog'))

@app.route("/blog/delete/<id>")
def deleteBlog(id):
    con = db.connection
    cursor = con.cursor()
    cursor.execute("DELETE FROM post WHERE id = %s", (id, ))
    con.commit()
    return redirect(url_for('blog'))

@app.route("/blog/edit/<id>", methods = ["GET", "POST"])
def editBlog(id):
    con = db.connection
    if request.method == "GET":
    	with con.cursor() as cursor:
    		query = "select * from about"
    		cursor.execute(query)
    		about = cursor.fetchone()
    		query = "select * from post where id = %s"
    		cursor.execute(query, (id, ))
    		post = cursor.fetchone()
    		return render_template("blog.html", db = about, post = post)
    elif request.method == "POST":
        data = dict(request.form)
        cursor = con.cursor()
        cursor.execute("UPDATE post SET judul = %s, isi = %s WHERE id = %s", (data['judul'], data['isi'], id))
        con.commit()
        return redirect(url_for('blog'))


@app.errorhandler(404)
def mampus_error(e):
    return render_template("404.html")

if __name__  == '__main__':
	app.run(debug=True)
