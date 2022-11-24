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
			                sh "aws ec2 start-instances --instance-ids i-05e7eb76c50bb2564 --region ap-southeast-1"
		}
            }
        }
    }
    post {
            always {
                 emailext attachLog: true, body: 'Instances are stopping', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Instances Stop', to: 'avinash.palvadi@ihx.in'
        }
    }
}
