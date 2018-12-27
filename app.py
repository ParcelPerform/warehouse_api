import time
from flask import Flask, jsonify


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/create-order/', methods=['POST'])
def create_order():
    time.sleep(4)
    return jsonify({"status": "success", "data": {}})

