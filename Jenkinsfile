pipeline {
    agent any

    environment {
        IMAGE_NAME = "annotation-nlp-app"
        IMAGE_TAG = "v1"
        NEXUS_URL="localhost:8083"
    }

    options {
        // Supprime workspace avant chaque build pour éviter les erreurs Git
        skipDefaultCheckout(true)
    }

    stages {

        stage('Clean Workspace & Checkout') {
            steps {
                // Supprime tout le contenu pour partir propre
                cleanWs()

                // Checkout Git depuis GitHub
                checkout([$class: 'GitSCM',
                  branches: [[name: 'main']],
                  doGenerateSubmoduleConfigurations: false,
                  extensions: [[$class: 'CleanCheckout']], // <-- force un clone propre
                  userRemoteConfigs: [[
                      url: 'https://github.com/mariamelhamdaoui/Annotation_NLP.git',
                  ]]
                ])
            }
        }

        stage('Build Image Docker (docker-compose)') {
            steps {
                sh 'docker-compose build'
                sh "docker tag nlpapp_annotation-nlp-app:latest ${NEXUS_URL}/repository/docker-hosted/${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }

         stage('Tag & Push Image vers Nexus') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'nexus-credentials', // ID des credentials Jenkins
                    usernameVariable: 'NEXUS_USER',
                    passwordVariable: 'NEXUS_PASS'
                )]) {
                    script {
                        // Login sur Nexus
                        sh "docker login ${NEXUS_URL} -u $NEXUS_USER -p $NEXUS_PASS"

                        // Tag de l'image locale pour le repository Nexus
                        sh "docker tag ${IMAGE_NAME}:latest ${NEXUS_URL}/repository/docker-hosted/${IMAGE_NAME}:${IMAGE_TAG}"

                        // Push de l'image vers Nexus
                        sh "docker push ${NEXUS_URL}/repository/docker-hosted/${IMAGE_NAME}:${IMAGE_TAG}"
                    }
                }
            }
        }

    }
}

