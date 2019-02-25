pipeline {
  agent {
    docker {
      args '-v /root/.m2:/root/.m2'
      image 'countingup/jenkins:latest'
    }

  }
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