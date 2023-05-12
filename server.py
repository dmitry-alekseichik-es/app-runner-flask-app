from flask import Flask, jsonify
import torch

app = Flask(__name__)


@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World!'


@app.route('/health')
def health():  # put application's code here
    return jsonify({'message': 'Server is healthy!'}), 200


if __name__ == '__main__':
    app.run()
