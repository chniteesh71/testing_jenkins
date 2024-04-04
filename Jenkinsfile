pipeline {
     agent any
     stages {
         stage ('running some shell command no 1') {
              steps {
                   echo "uptime of this system is"
                   uptime
              }
         }
         stage ('running some shell command no 2') {
              steps {
                   sh "echo 'current user is'"
                   sh "whoami"
              }
         }
          stage ('running some shell command no 3') {
              steps {
                   sh "echo 'th file system utilix'"
                   sh "whoami"
              }
         }
    }
}
