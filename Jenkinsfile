
pipeline {
  agent any
  environment {
    registry = 'chniteesh71/testing'
    registryCredentials='dockerhubcreds'
  }
  stages {
    stage('Building the image') {
      steps {
        script {
          dockerImage = docker.build( registry + ":V$BUILD_NUMBER", "./dockerfilestxt/")
        }
      } 
    }

    stage ('upload the image') {
      steps {
        script {
                docker.withRegistry('',registryCredentials) {
                dockerImage.push("V$BUILD_NUMBER")
                dockerImage.push('latest')
            }
        }
      }

    }
    stage('removing the unused docker images') {
        steps {
            sh "docker rmi $registry:V$BUILD_NUMBER"
          }
     }
  }
}
