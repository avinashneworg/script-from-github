pipeline {
	agent any
	stages {
		stage ('Checkout Code from GIT-HUB') {
			steps {
				git 'https://github.com/avinashneworg/maven-samples.git'
			}
		}
		stage ('build Code with Maven') {
			steps {
				sh 'mvn clean package'
			}
		}
		stage ('Archive Artifact') {
			steps {
				archive 'single-module/target/*.war'
				archive 'multi-module/webapp/target/*.war'
			}
		}
		stage ('Publish JUnit Test Results') {
			steps {
				junit 'single-module/target/surefire-reports/*.xml'
			}
		}
	}
}
