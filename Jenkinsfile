pipeline {
  agent any
  stages {
    stage('Maven build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('Docker build') {
      steps {
        sh '''docker build -t 47.95.210.42:5000/eureka:latest .
docker push 47.95.210.42:5000/eureka:latest'''
      }
    }
    stage('Deploy') {
      steps {
        sh 'rancher --debug --url http://47.95.210.42:9000/v1 --access-key 8A2B71CFB44520F938F4 --secret-key TRKUUD5Vo8dPoQeB2hnJeQFVFSS8QogJrZ2bFuQy  --env Default up --force-upgrade --stack spring -d'
      }
    }
  }
}