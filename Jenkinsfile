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
            sh "rm truffle || true"
            sh " docker run gesellix/trufflehog --json  https://github.com/rituraj-gaur/EVCache.git > truffle"
            sh "cat truffle"
          }
        }
  }
}

