pipeline {
  agent any

  environment {
    NEXUS_URL = "nexus-ip:8082"
    IMAGE_NAME = "my-app"
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

    stage('Build JAR') {
      steps {
        sh 'mvn package -DskipTests'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-app .'
      }
    }

    stage('Push to Nexus') {
      when {
        expression { return env.NEXUS_URL?.trim() }
      }
      steps {
        withCredentials([usernamePassword(
          credentialsId: 'nexus-credentials',
          usernameVariable: 'USER',
          passwordVariable: 'PASS'
        )]) {
          sh """
          docker login $NEXUS_URL -u $USER -p $PASS
          docker tag my-app $NEXUS_URL/$IMAGE_NAME:latest
          docker push $NEXUS_URL/$IMAGE_NAME:latest
          """
        }
      }
    }
  }

  post {
    success {
      echo ' Pipeline CI/CD exécuté avec succès '
    }
    failure {
      echo ' Échec du pipeline'
    }
  }
}








