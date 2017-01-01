import sys
sys.path.append('../')
from flask import Flask,render_template
from flask.ext.bootstrap import Bootstrap
from flask.ext.mail import Mail
from flask.ext.moment import Moment
from flask.ext.sqlalchemy import SQLAlchemy
from config import config

bootstarp = Bootstrap()
mail = Mail()
moment = Moment()
db = SQLAlchemy()

def create_app(development):
    app = Flask(__name__)
    app.config.form_object(config[development])
    config[development].init_app(app)

    bootstarp.init_app(app)
    mail.init_app(app)
    moment.init_app(app)
    db.init_app(app)

    from .main import main as main_blueprint
    app.register_blueprint(main_blueprint)

    return app

