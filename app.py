from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello, World! This is a CI/CD pipeline demo with AWS CodePipeline. Version 2'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
