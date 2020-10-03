from flask import Flask
import sys

app = Flask(__name__)


@app.route('/')
def hello_world():
    return f"""
<h>Hello World!</h>
<p>Python version: {sys.version}</p>
"""


if __name__ == '__main__':
    app.run(host="0.0.0.0")