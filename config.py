import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY')
    SQLALCHEMY_COMMIT_ON_TEARDOWN = True
    DEGREE_MAIL_SUBJECT_PREFIX = '[Degree]'
    DEGREE_MAIL_SENDER = 'Degree Admin <moon_boyangfeng@sina.com>'
    DEGREE_ADMIN = os.environ.get('DEGREE_ADMIN')

    @staticmethod
    def init_app(app):
        pass