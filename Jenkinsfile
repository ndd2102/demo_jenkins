pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/ndd2102/demo_jenkins.git'
            }
        }
    }
}