#!/bin/bash
pkill -f "flask run"
cd /home/ec2-user/flask-cicd-demo
nohup flask run --host=0.0.0.0 --port=8080 &