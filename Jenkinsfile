@Library('SharedLibrary') _
pipeline {
    agent {label 'devops-server-02'}
    
    stages {
        stage ('Clone') {
            steps {
                script {
                    jenkins_clone()
                }
            }
        }
        stage ('Build') {
            steps {
                script {
                    jenkins_build()
                }
            }
        }
        stage ('Push') {
            steps {
                script {
                    jenkins_build()
                }
            }
        }
        stage ('Deploy') {
            steps {
                script {
                    jenkins_build()
                }
            }
        }
    }
}
