pipeline {
    agent any

    environment {
        NEXUS_REGISTRY = "http://localhost:8083"
        IMAGE_NAME = "annotation-nlp-app"
        IMAGE_TAG = "v1"
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
            }
        }

        stage('Tag & Push Image vers Nexus') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'nexus-credentials',
                    usernameVariable: 'NEXUS_USER',
                    passwordVariable: 'NEXUS_PASS'
                )]) {
                    sh '''
                    docker login ${NEXUS_REGISTRY} -u $NEXUS_USER -p $NEXUS_PASS

                    # Image générée par docker-compose
                    IMAGE_ID=$(docker images -q | head -1)

                    docker tag $IMAGE_ID ${NEXUS_REGISTRY}/$IMAGE_NAME:$IMAGE_TAG
                    docker push ${NEXUS_REGISTRY}/$IMAGE_NAME:$IMAGE_TAG
                    '''
                }
            }
        }

    }
}

