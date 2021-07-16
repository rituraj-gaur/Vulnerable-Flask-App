pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        echo " Running build number: $BUILD_NUMBER"
      }
    }
    stage('workspace') {
      steps {
        echo "Current workspace is $WORKSPACE"
      }
    }
    stage('check-secrets') {
          steps {
            sh "rm truffle-logs || true"
            sh "trufflehog --json --regex --entropy=False https://github.com/dxa4481/truffleHog.git > truffle-logs"
            sh "cat truffle-logs"
          }
        }
  }
}

