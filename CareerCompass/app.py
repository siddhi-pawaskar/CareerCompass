from flask import Flask,render_template,url_for,request,redirect;
import mysql.connector

app=Flask(__name__)

db_config={
    'host' : 'localhost',
    'user' : 'root',
    'password' : '',
    'database' : 'projectcareercompass'   
}

conn = mysql.connector.connect(**db_config) 
cursor = conn.cursor(dictionary = True)

@app.route('/')
def home():
    cursor.execute("SELECT * FROM roadmaps")
    roadmaps = cursor.fetchall()

    return render_template("index.html", roadmaps=roadmaps)

@app.route('/streams')
def streams():
    cursor.execute('SELECT *FROM streams')
    streams = cursor.fetchall()
    return render_template('streams.html',streams = streams)

@app.route('/trend')
def trend():
    cursor.execute('SELECT *FROM trending')
    trending = cursor.fetchall()
    return render_template('trending.html',trending = trending)

@app.route('/guidance')
def guidance():
    return render_template('guidance.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/contact')
def contact():

    success = request.args.get('success')

    return render_template('contact.html', success=success)

@app.route('/after10')
def after10():
    cursor.execute('SELECT *FROM careers')
    careers = cursor.fetchall()
    return render_template('after10th.html',careers = careers)

@app.route('/career/<int:id>')
def career_details(id):
    cursor.execute("SELECT * FROM careers WHERE id=%s", (id,))
    career = cursor.fetchone()
    return render_template('career_details.html', career=career)

@app.route('/subscribe', methods=['POST'])
def subscribe():

    email = request.form['email']
    try:
        query = "INSERT INTO subscribers(email) VALUES(%s)"

        cursor.execute(query, (email,))

        conn.commit()
    except:
        pass
    return redirect(request.referrer)

@app.route('/submit',methods=['POST'])
def submit():
    name=request.form.get('name')
    email=request.form.get('email')
    comment=request.form.get('comment')
    cursor.execute('INSERT INTO contacts(name,email,comment) VALUES(%s,%s,%s)',(name,email,comment))
    conn.commit()
    return redirect(url_for('contact', success=1))

@app.route('/roadmap/<slug>')
def roadmap(slug):
    cursor.execute("SELECT * FROM roadmaps WHERE slug=%s", (slug,))
    roadmap = cursor.fetchone()

    return render_template("roadmap.html", roadmap=roadmap)


if __name__=="__main__":
    app.run(debug=True)