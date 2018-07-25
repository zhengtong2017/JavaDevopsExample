pipeline {
  agent any
  stages {
    stage('maven') {
      steps {
        sh 'mvn clean package -Dmaven.test.skip=true'
      }
    }
    stage('status') {
      steps {
        sh 'echo test'
      }
    }
  }
}