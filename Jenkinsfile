pipeline {
  agent {
    docker {
      image 'abc:def'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('docker') {
      steps {
        sh 'docker build -t eureka:custom .'
      }
    }
  }
}