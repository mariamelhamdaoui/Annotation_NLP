pipeline {
    agent any

    environment {
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
                    docker login 172.17.0.1:8082 -u $NEXUS_USER -p $NEXUS_PASS


                    docker tag $IMAGE_ID 172.17.0.1:8082/repository/docker-hosted/$IMAGE_NAME:$IMAGE_TAG
                    docker push 172.17.0.1:8082/repository/docker-hosted/$IMAGE_NAME:$IMAGE_TAG
                    '''
                }
            }
        }

    }
}

