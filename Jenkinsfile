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
					
					sh "aws ec2 stop-instances --instance-ids  i-05d0fe3064dade2f7 --region ap-southeast-1"
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
