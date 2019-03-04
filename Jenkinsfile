pipeline {
  agent any
  stages {
    stage('Maven Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('Docker Push') {
      steps {
        sh 'docker build -t 45.33.10.160:5000/eureka:latest .'
        sh 'docker push 45.33.10.160:5000/eureka:latest'
      }
    }
    stage('Rancher Deploy') {
      steps {
        sh 'rancher --debug --url http://45.33.10.160:9000/v1 --access-key FD602B630F6CAD629F5D --secret-key QubgzgnpHcL8vwVRj54QS5PH7a4btZgLQMXFjFaP up --force-upgrade --stack springcloud -d'
      }
    }
  }
}