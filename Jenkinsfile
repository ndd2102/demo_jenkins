pipeline {
    agent any
     environment {
     DOCKERHUB_CREDENTIALS = credentials('dockerhub')
     }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
        stage('Build') {
             steps {
                
                 sh 'sudo docker build -t nddung2102/demo-jenkins .'
             }
         }
         stage('Login') {
             steps {
                 sh 'sudo echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
             }
         }
         stage('push') {
             steps {
                 sh 'sudo docker push nddung2102/demo-jenkins .'
             }
         }
    }
}
