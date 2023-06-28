pipeline {
    agent any
    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub')
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t nddung2102/demo-jenkins .'
            }
        }
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push') {
            steps {
                sh 'docker push -t nddung2102/demo-jenkins .'
            }
        }
    }
}