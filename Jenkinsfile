pipeline {
    agent any
    // environment {
    // DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    // }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
                // bat "mvn clean"
                // bat "mvn package"
            }
        }
        stage('Build') {
             steps {
                
                 bat 'docker build -t nddung2102/test-jenkins .'
             }
         }
        //  stage('Login') {
        //      steps {
        //          sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        //      }
        //  }
        //  stage('push') {
        //      steps {
        //          sh 'docker push nddung2102/demo-jenkins'
        //      }
        //  }
         stage('run') {
             steps {
                 bat 'docker run -dp 8000:8000 nddung2102/test-jenkins:latest'
             }
         }
    }
}