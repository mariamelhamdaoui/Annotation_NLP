pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Build, Rebuild and Deploy') {
            steps {
                script {
                    sh 'docker-compose down || true'
                    sh "docker rmi nlp_annotation_pipeline-nlpapp || true"
                    sh 'docker-compose up --build --force-recreate -d'
                }
            }
        }
    }
    post {
        success { echo 'Déploiement OK' }
        failure { echo 'Echec' }
    }
}







