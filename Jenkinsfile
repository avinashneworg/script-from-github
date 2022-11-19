pipeline {
      agent any
	  
	    stages {
	        stage('To check the disc space in server') {
			    steps {
			        sshagent(['ssh']) {
				    echo "avinash"
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@172.31.33.182 python3 cpu.py"
				 
				    echo "dinesh"
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@172.31.35.206 python3 cpu.py"	
			       }
		      }
		  }
	   }
	   post {
            always {
                 emailext attachLog: true, body: 'A Test EMail', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Test', to: 'avinash.palvadi@ihx.in'
        }
    }
}
