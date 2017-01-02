import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'Ym95YW5nZmVuZw=='
    SQLALCHEMY_COMMIT_ON_TEARDOWN = True
    DEGREE_MAIL_SUBJECT_PREFIX = '[Degree]'
    DEGREE_MAIL_SENDER = 'Degree Admin <moon_boyangfeng@sina.com>'
    DEGREE_ADMIN = os.environ.get('DEGREE_ADMIN')

    @staticmethod
    def init_app(app):
        pass

class DevelopementConfig(Config):
    DEBUG = True
    MAIL_SERVER = 'smtp.sina.com'
    MAIL_PORT = 25
    MAIL_USE_TLS = True
    MAIL_USERNAME = os.environ.get('MAIL_USERNAME')
    MAIL_PASSWORD = os.environ.get('MAIL_PASSWORD')
    SQLALCHEMY_DATABASE_URI = os.environ.get('DEV_DATABASE_URL') or \
                              'mysql://root@123456/degree,encoding="utf8", echo=True'


class TestingConfig(Config):
    TESTING = True
    SQLALCHEMY_DATABASE_URI = os.environ.get('TEST_DATABASE_URL') or \
                              'mysql://root@123456/degree,encoding="utf8", echo=True'


class ProductionConfig(Config):
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL') or \
                              'mysql://root@123456/degree,encoding="utf8", echo=True'


config = {
    'development': DevelopementConfig,
    'testing': TestingConfig,
    'production': ProductionConfig,
    'default': DevelopementConfig
    }