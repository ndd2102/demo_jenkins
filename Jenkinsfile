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
        stage('Build and run') {
             steps {
                
                 bat 'docker compose up -d --build'
             }
         }
       
    }
}