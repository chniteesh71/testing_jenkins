pipeline {
     agent any
     stages {
         stage ("running some shell command no 1") {
              steps {
                   sh "echo "uptime of this system is""
                   sh "uptime"
              }
         }
         stage ("running some shell command no 2") {
              steps {
                   sh "echo "current user is : ""
                   sh "whoami"
              }
         }
    }
}
