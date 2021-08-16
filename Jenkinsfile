pipeline {
	agent any
	properties([parameters([string(defaultValue: 'NULL', description: 'Checkmarx SAST: GITHUB repo of the URL to be scanned.', name: 'GIT_URL', trim: true), string(description: 'Checkmarx SAST: Project to which this Static Security Scan is to be mapped.', name: 'PROJECT_NAME', trim: true), choice(choices: ['\\CxServer\\PAS\\Product\\ECS\n\\CxServer\\PAS\\Product\\ECS\\PROD\n\\CxServer\\PAS\\Product\\ECS\\DEV', description: 'Team Name: Generally binds to the Product name (ECS/SDP/OBS)', name: 'TEAM_NAME'])])
	stages {
		stage ("Git Checkout"){
		    steps {
				
				    sh "echo stage one."
				    }
				}
		stage ("CX Security Scan"){
		     steps{
				sh "echo Stage 2"
			}
		}
}
}	
