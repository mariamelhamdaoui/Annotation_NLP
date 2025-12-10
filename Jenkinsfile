pipeline {
  agent any

  environment {
    NEXUS_URL = "nexus-ip:8082"
    IMAGE_NAME = "my-app"
  }

  stages {
    stage('Checkout') {
      steps { checkout scm }
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

    stage('Code Quality') {
      steps {
        withSonarQubeEnv('SonarQubeServer') {
          sh 'mvn sonar:sonar'
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

    stage('Deploy to Kubernetes') {
      steps {
        withCredentials([file(credentialsId: 'kubeconfig-cred', variable: 'KUBECONFIG')]) {
          sh 'kubectl apply -f k8s/'
        }
      }
    }
  }
}







