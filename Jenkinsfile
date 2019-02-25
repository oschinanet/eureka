pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('error') {
      steps {
        sh 'docker build -t eureka:custom .'
      }
    }
  }
}