pipeline {
  agent any
  environment{
    git_cred = credentials('jenkins-pat')
  }
  stages {
    stage('meta-data') {
      steps {
        echo "BUILD NUMBER: $BUILD_NUMBER"
        echo "Current workspace: $WORKSPACE"
      }
    }
    stage('git-clone') {
          steps {
            git credentialsId: 'jenkins-pat', url: 'https://github.com/rituraj-gaur/EVCache.git'
          }
        }

    stage('check-secrets') {
          steps {
            sh "rm truffle || true"
            sh "docker run gesellix/trufflehog --json  https://github.com/rituraj-gaur/EVCache.git > truffle"
            //sh 'docker run --rm -v "$(pwd):/proj" dxa4481/trufflehog --json file:///proj > truffle'
            sh "cat truffle"
          }
        }
  }
}

