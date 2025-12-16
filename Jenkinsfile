pipeline {
  agent any

  tools {
    maven 'Maven_3'
  }

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

    //stage('Code Quality - SonarQube') {
     // steps {
       // withSonarQubeEnv('SonarQubeServer') {
         // sh 'mvn sonar:sonar'
        //}
      //}
    //}

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
