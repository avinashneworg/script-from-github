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
					
					sh "aws s3 ls"
					sh "aws ec2 describe-instances"
					sh "aws ec2 start-instances --instance-ids i-05e7eb76c50bb2564 --region ap-southeast-1"
		}
            }
        }
    }
}
