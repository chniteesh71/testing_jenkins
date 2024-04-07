pipeline {
     agent any
     environment {
                    registry = 'chniteesh71/cicd-kube-docker'
                    registryCredentials = 'dockerhub'
     }
      
     stages {
          stage ('Build Docker app image') {
            steps {
               script {
                dockerImage = docker.build( registry + ":V$BUILD_NUMBER","./dockerfilestxt/")
               }

             }
          }

        stage ('upload image to docker hub') {
          steps {
             script {
                docker.withRegistry('',registryCredentials) {
                dockerImage.push("V$BUILD_NUMBER")
                dockerImage.push('latest')
                }  
              }
          }
        }

        stage('remove the unused docker images') {
          steps {
            sh "docker rmi $registry:V$BUILD_NUMBER"
          }
        }
    }
}
