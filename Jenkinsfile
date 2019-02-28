pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('docker') {
      steps {
        sh 'docker build -t 47.95.210.42:5000/eureka:latest .'
      }
    }
  }
}