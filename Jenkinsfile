pipeline {
  agent any
  environment{
    #For demo jenkins
	git_cred = credentials('jenkins-pat')
  }
  stages {
    stage('meta-data') {
      steps {
        echo "BUILD NUMBER: $BUILD_NUMBER"
        echo "Current workspace: $WORKSPACE"
	echo "Project name : $PROJECT_NAME"
      }
    }
    stage('git-clone') {
          steps {
            git credentialsId: 'jenkins-pat', url: 'https://github.com/rituraj-gaur/Vulnerable-Flask-App.git'
          }
        }

    /*stage('check-secrets') {
          steps {
            sh 'cd $WORKSPACE'
            sh "rm truffle || true"
            //sh "docker run gesellix/trufflehog --json  https://github.com/rituraj-gaur/EVCache.git > truffle"
            sh 'docker run --rm -v "$(pwd):/proj" dxa4481/trufflehog --json file:///proj > truffle'
            sh "cat truffle"
          }
        }*/

  }
}

