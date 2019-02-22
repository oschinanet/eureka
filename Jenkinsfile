pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
  }
  stages {
    stage('Deploy') {
      steps {
        def dockerfile = 'Dockerfile'
        def customImage = docker.build("10.39.47.22/qinzhao/demo:v1.1", "-f ${dockerfile} .")
        customImage.push()
      }
    }
  }
}
