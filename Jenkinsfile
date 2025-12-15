pipeline {
  agent any

  environment {
    NEXUS_URL  = "nexus-ip:8082"
    IMAGE_NAME = "nlp-annotation-app"
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
      post {
        always {
          junit 'target/surefire-reports/*.xml'
        }
      }
    }

    stage('Code Quality - SonarQube') {
      steps {
        withSonarQubeEnv('SonarQubeServer') {
          sh 'mvn sonar:sonar'
        }
      }
    }
    stage('Build JAR') {
      steps {
        sh 'mvn clean package -DskipTests'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t ${IMAGE_NAME}:latest .'
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









