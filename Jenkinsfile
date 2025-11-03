pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo ' Clonage du dépôt...'
                checkout scm
            }
        }

        stage('Build and Deploy with Docker Compose') {
            steps {
                echo ' Construction et déploiement via Docker Compose...'
                script {
                    // Stop les conteneurs existants
                    sh 'docker-compose down || true'

                    // Construire les images et lancer les conteneurs
                    sh 'docker-compose up --build -d'
                }
            }
        }
    }

    post {
        success {
            echo ' Application NLP Annotation déployée avec succès !'
        }
        failure {
            echo ' Le pipeline a échoué.'
        }
    }
}

