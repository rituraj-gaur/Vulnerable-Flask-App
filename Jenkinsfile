pipeline {
  agent any
  environment{
    //For demo jenkins
    	git_cred = credentials('jenkins-pat')
    	//git_url = "https://github.com/securego/gosec.git"
  }

  stages {
    stage('meta-data') {
      steps {
        echo "BUILD NUMBER: $BUILD_NUMBER"
        echo "Current workspace: $WORKSPACE"
        echo "Project value received: $PROJECT_NAME "
      }
    }
     stage('git-clone') {
        steps {
                // git credentialsId: 'jenkins-pat', url: "${env.git_url}"
                git credentialsId: 'jenkins-pat', url: "${params.GIT_SRC}"
        }
      }
    stage('Checkmarx SAST') {
        steps{
            //step([$class: 'CxScanBuilder', addGlobalCommenToBuildCommet: true, avoidDuplicateProjectScans: true, comment: '', configAsCode: true, credentialsId: 'dell-cx', excludeFolders: '', exclusionsSetting: 'global', failBuildOnNewResults: false, failBuildOnNewSeverity: 'HIGH', filterPattern: '', fullScanCycle: 10, generatePdfReport: true, password: '{AQAAABAAAAAQ7pgOZ/zzWYWkB0TLRuHvttT+Nj/qJkF62hJUn+fZJiM=}', projectName: $PROJECT_NAME, sastEnabled: true, serverUrl: 'https://cx.dell.com', sourceEncoding: 'Provide Checkmarx server credentials to see source encodings list', useOwnServerCredentials: true, username: '', vulnerabilityThresholdResult: 'FAILURE', waitForResultsEnabled: true])
            sh 'echo DO CHECKMARX SCAN AT THIS STAGE'
        }
    }
   
   //Orignal End
  }
}
//stage('Open Source Compliance') {
//          steps {
//            blackduck([appName: "${APP_NAME}", appDomain: "${APP_DOMAIN}", branchName:
//            "master"])
//          }
//        }

