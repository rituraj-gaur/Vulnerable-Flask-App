pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        echo " Running build number: $BUILD_NUMBER"
        echo  "Running build no :  $BUILD_ID"
      }
    }
    stage('build') {
      steps {
        echo "Current workspace is $WORKSPACE"
      }
    }
  }
}


