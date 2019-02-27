pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('docker') {
      parallel {
        stage('docker') {
          steps {
            sh 'docker build -t eureka:custom .'
          }
        }
        stage('') {
          steps {
            input(message: 'test', id: '1', ok: '2', submitter: '3', submitterParameter: '4')
          }
        }
      }
    }
  }
}