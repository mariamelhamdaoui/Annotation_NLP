pipeline {
  agent any

  environment {
    NEXUS_REGISTRY = "nexus-ip:8082"
    IMAGE_NAME = "annotation-nlp-app"
    IMAGE_TAG = "v1"
  }

  stages {

    stage('Checkout Code') {
      steps {
        git branch: 'main',
            credentialsId: 'github-token',
            url: 'https://github.com/mariamelhamdaoui/Annotation_NLP.git'
      }
    }

    stage('Tests Unitaires') {
      steps {
        sh 'mvn test'
      }
      post {
        always {
          junit 'target/surefire-reports/*.xml'
        }
      }
    }

    stage('Analyse Qualité - SonarQube') {
      steps {
        withSonarQubeEnv('SonarQube') {
          sh 'mvn sonar:sonar'
        }
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
          docker login $NEXUS_REGISTRY -u $NEXUS_USER -p $NEXUS_PASS

          IMAGE_ID=$(docker images -q | head -1)

          docker tag $IMAGE_ID $NEXUS_REGISTRY/$IMAGE_NAME:$IMAGE_TAG
          docker push $NEXUS_REGISTRY/$IMAGE_NAME:$IMAGE_TAG
          '''
        }
      }
    }

  }
}
