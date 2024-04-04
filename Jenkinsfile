pipeline {
     agent any
     stages {
         stage ('running some shell command no 1') {
              steps {
                   sh "echo 'uptime of this system is'"
                   sh "uptime"
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
                   sh "echo 'the file system utilization in our Jenkins server(t2 medium)'"
                   sh "df -h"
              }
         }
    }
}
##