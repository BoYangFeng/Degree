from datetime import datetime
from flask import render_template,redirect,session,url_for

from . import main
from .forms import NameForms
from .. import db
from ..models import User


@main.route('/',method = ['GET','POST'])
def index():
    form = NameForms()
    if form.validate_on_sbumit():
        return redirect(url_for('.index'))
    return render_template('index.html',
                           form = form,
                           name = session.get('name'),
                           known = session.get('known',False),
                           current_time=datetime.utcnow())