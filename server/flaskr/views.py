"""
Separation of Flask files follows the structure of
https://github.com/app-generator/tutorial-flask/blob/main/flask-project-structure.md#isolated-app-directory
Though generally my own work
"""
# app routing

from flask import jsonify

from . import app

@app.route('/')
def homepage():
    return jsonify("hi from flask")
