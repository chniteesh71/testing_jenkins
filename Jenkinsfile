pipeline {
     agent any
     environment {
                    registryCredential = 'dockerhubcreds'
                    appRegistry = 'chniteesh71/testing'
     }
      
     stages {
          stage ('Build Docker app image') {
            steps {
               script {
                dockerImage = docker.build( appregistry + ":V$BUILD_NUMBER","./dockerfilestxt/")
               }

             }
          }

        stage ('upload image to Docker Repo in DockerHub') {
          steps {
             script {
                docker.withRegistry( '', registryCredential) {
                dockerImage.push("V$BUILD_NUMBER")
                dockerImage.push('latest')
                }  
              }
          }
        }

        stage('remove the unused docker images from Jenkins ec2 instance for space') {
          steps {
            sh "docker rmi $appregistry:V$BUILD_NUMBER"
          }
        }
    }
}
