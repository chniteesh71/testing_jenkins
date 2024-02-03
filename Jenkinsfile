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
	    	stage ('Checkstyle Analysis') {
                     steps {
                           sh 'mvn checkstyle:checkstyle'
		      } 
                }

                stage('Sonar Analysis') {
                     environment {
                        scannerHome = tool 'sonar4.7'
                     }
                     steps {
                        withSonarQubeEnv('sonar') {
                            sh '''${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=vprofile \
                            -Dsonar.projectName=vprofile \
                            -Dsonar.projectVersion=1.0 \
                            -Dsonar.sources=src/ \
                            -Dsonar.java.binaries=target/test-classes/com/visualpathit/account/controllerTest/ \
                            -Dsonar.junit.reportsPath=target/surefire-reports/ \
                            -Dsonar.jacoco.reportsPath=target/jacoco.exec \
                            -Dsonar.java.checkstyle.reportPaths=target/checkstyle-result.xml'''
                        }
                      }
                   }


	     }

}
