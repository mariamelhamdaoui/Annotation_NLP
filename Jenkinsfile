pipeline {
  agent any

  environment {
    NEXUS_URL  = "nexus-ip:8082"
    IMAGE_NAME = "nlp-annotation-app"
  }

  stages {
    stage('Checkout Code') {
      steps {
        // Clone explicite au lieu de checkout scm
        git branch: 'main', 
            url: 'https://github.com/mariamelhamdaoui/Annotation_NLP.git',
      }
    }
    stage('Build Docker Image') {
      steps {
        sh """
          docker build -t ${IMAGE_NAME}:latest .
        """
      }
    }

    

    stage('Push Docker Image to Nexus') {
      steps {
        withCredentials([usernamePassword(
          credentialsId: 'nexus-credentials',
          usernameVariable: 'NEXUS_USER',
          passwordVariable: 'NEXUS_PASS'
        )]) {
          sh """
            docker login ${NEXUS_URL} -u ${NEXUS_USER} -p ${NEXUS_PASS}
            docker tag ${IMAGE_NAME}:latest ${NEXUS_URL}/${IMAGE_NAME}:latest
            docker push ${NEXUS_URL}/${IMAGE_NAME}:latest
          """
        }
      }
    }
  }

  post {
    success {
      echo ' Pipeline CI/CD exécuté avec succès !'
    }
    failure {
      echo ' Échec du pipeline'
    }
  }
}
