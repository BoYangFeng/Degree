from flask import Flask,render_template
from flask import abort
from application import *


app = Flask(__name__)

@app.route("/")
def index():
    return render_template('index.html')

@app.route("/user/<name>")
def user(name):
    return render_template('user.html',name=name)

# @app.route("/user/<id>")
# def get_user(id):
#     user = locals(id)
#     if not user:
#         return abort(404)
#     return "hello %s" % id

if __name__=="__main__":
    app.run(debug=True)