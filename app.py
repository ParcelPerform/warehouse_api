import time
from flask import Flask, jsonify


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/create-order/', methods=['POST'])
def add_restaurant():
    time.sleep(4)
    return jsonify({"status": "success", "data": {}})

