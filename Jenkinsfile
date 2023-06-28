pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
        stage('build image') {
            steps {
                dockerImage = docker.build("nddung2102/demo-jenkins:latest")
            }
        }
        stage('push') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub',url: '') {
                    dockerImage.push()
                }
            }
        }
    }
}