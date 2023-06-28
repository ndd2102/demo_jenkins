pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
        stage('push') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub',url: '') {
                    sh 'docker build -t nddung2102/demo-jenkins .'
                    sh 'docker push -t nddung2102/demo-jenkins .'
                }
            }
        }
    }
}