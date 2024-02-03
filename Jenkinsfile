pipeline{
	    agent any 
	    tools{
	         maven 'MAVEN3'
	         jdk 'OracleJDK11'
	    }
	    stages {
	    	stage ('Fetching the git-hub code') {
	    	    steps {
                    git branch : 'main', url : 'https://github.com/hkhcoder/vprofile-project.git'
	    	    }
	    	}

	    	stage ( 'Build'){
	    	     steps {
	    	         sh 'mvn install -DskipTests'
	    	     }
	    	     post {
	    	         success {
	    	              echo 'archiving artifacts'
	    	              archiveArtifacts artifacts: '**/*.war'
	    	         }
	    	     }
	    	}

	    	stage ('Unit Tests') {
	    	      steps{
	    	           sh 'mvn test'
	    	      }

	    	}
	    	stage('Checkstyle Analysis'){
                steps {
                   sh 'mvn checkstyle:checkstyle'
                }
            }
	    }

}
