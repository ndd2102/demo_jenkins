pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
        stage('Build') {
             steps {
                
                 sh 'docker build -t demo-jenkins .'
             }
         }
         stage('Login') {
             steps {
                 sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
             }
         }
         stage('push') {
             steps {
                //  sh 'sudo docker tag demo-jenkins nddung2102/demo-jenkins'
                 sh 'docker push nddung2102/demo-jenkins'
             }
         }
    }
}