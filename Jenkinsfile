pipeline {
     agent any
     environment {
                    registryCredential = 'ecr:us-east-1:awscreds'
                    appRegistry = '205483668172.dkr.ecr.us-east-1.amazonaws.com/vprofileimg'
                    vprofileRegistry = "https://205483668172.dkr.ecr.us-east-1.amazonaws.com"
     }
      
     stages {
          stage ('Build Docker app image') {
            steps {
               script {
                dockerImage = docker.build( appregistry + ":V$BUILD_NUMBER","./dockerfilestxt/")
               }

             }
          }

        stage ('upload image to ECR Repo in AWS') {
          steps {
             script {
                docker.withRegistry( vprofileRegistry, registryCredential) {
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
