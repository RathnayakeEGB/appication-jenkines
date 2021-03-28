pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
            post {
                echo 'now archiving......................'
                archiveArtifacts:'**/target/*.war'
            }
        }
    }
}