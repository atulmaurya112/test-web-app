@Library('SharedLibrary') _
pipeline {
    agent {label 'devops-server-02'}
    
    stages {
        stage ('Clone') {
            steps {
                script {
                    jenkins_clone('https://github.com/atulmaurya112/test-web-app', 'main')
                }
            }
        }
        stage ('Build') {
            steps {
                script {
                    jenkins_build('sample-web-app', 'latest')
                }
            }
        }
        stage ('Push') {
            steps {
                script {
                    jenkins_push('sample-web-app', 'latest', 'atulmaurya112')
                }
            }
        }
        stage ('Deploy') {
            steps {
                script {
                    jenkins_deploy()
                }
            }
        }
    }
}
