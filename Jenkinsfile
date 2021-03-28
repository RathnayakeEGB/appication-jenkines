pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
            post {
                success {
                   echo 'now archiving......................'
                   archiveArtifacts artifacts: '**/target/*.war'
                }

            }
        }
        stage("Deployement...."){

            steps{
                build job :'Deploy staging'
            }

        }
    }
}