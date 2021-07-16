pipeline {
  agent any
  stages {
    stage('Meta-data') {
      steps {

        echo " Running build number: $BUILD_NUMBER"
        echo  "Running build no :  $BUILD_ID"
      }
    }
    stage('git-clone') {
      steps {
        echo 'Current working folder : '
        echo `pwd`
        mkdir clone
        cd clone
        git clone "https://github.com/rituraj-gaur/WebGoat.git"
        echo "Repo cloned successfully"
      }
    }
  }
}
