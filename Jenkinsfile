pipeline {
    agent any 
    tools {
        maven 'maven_3_5_0'
    }
    stages {
        stage('Build Maven'){
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ndd2102/demo_jenkins']])
                sh 'mvn clean install'
            }
        }
    }
}