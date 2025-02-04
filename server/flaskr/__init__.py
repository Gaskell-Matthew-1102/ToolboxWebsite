'''
Based on tutorial found at:
https://testdriven.io/blog/developing-a-single-page-app-with-flask-and-vuejs/
'''

# import basic stuff to have flask and flask+vue
from flask import Flask, jsonify
from flask_cors import CORS

# instantiate app
app = Flask(__name__)
app.config.from_object(__name__)

# enable CORS (cross-origin resource sharing)
CORS(app, resources={r'/*': {'origins': '*'}})

@app.route('/ping')
def ping():
    return jsonify("hi from flask")

if __name__ == '__main__':
    app.run()