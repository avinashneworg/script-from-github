pipeline{
    agent any
    stages{
        stage("AWS-jenkins credentials"){
            steps{
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-jenkins-demo',
					accessKeyVariable: 'AWS_ACCESS_KEY_ID',
					secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
					
					sh "aws ec2 start-instances --instance-ids i-0f103a78487a42798 --region ap-southeast-1"
		}
            }
        }
    }
}
