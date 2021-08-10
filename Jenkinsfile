pipeline {
  agent any
  environment{
    //For demo jenkins
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
            sh "mkdir this"
            sh "cd this"
            git credentialsId: 'jenkins-pat', url: 'https://github.com/rituraj-gaur/Vulnerable-Flask-App.git'
          }
        }

    stage('Code Scanning') {
      parallel {
        stage('Static Code Analysis') {
          steps {
            step([$class: 'CxScanBuilder',
                    comment: '',
                    credentialsId: '',
                    excludeFolders: '.helmignore, build, templates, javadocs, javadoc,
                                   dist, node_modules, WMSRegistryReader.java,
                                   BlowfishEncryptionStrategy.java, BlowfishUtils.java',
                    excludeOpenSourceFolders: '',
                    exclusionsSetting: '',
                    failBuildOnNewResults: false,
                    failBuildOnNewSeverity: 'MEDIUM',
                    filterPattern: '''!**/_cvs/**/*, !Checkmarx/Reports/*.*''',
                    fullScanCycle: 10,
                    incremental: false,
                    groupId: '0de2e46c-8410-478a-85b9-b5dce83f8ecb',
                    includeOpenSourceFolders: '',
                    osaArchiveIncludePatterns: '*.zip, *.war, *.ear, *.tgz',
                    osaInstallBeforeScan: false,
                    password: '{}',
                    preset: '36',
                    projectName: "${PROJECT_NAME}",
                    sastEnabled: true,
                    serverUrl: 'https://checkmarx.abc.com',
                    sourceEncoding: '1',
                    username: '',
                    vulnerabilityThresholdResult: 'FAILURE',
                    waitForResultsEnabled: true])
          }
        }
        }
}
//stage('Open Source Compliance') {
//          steps {
//            blackduck([appName: "${APP_NAME}", appDomain: "${APP_DOMAIN}", branchName:
//            "master"])
//          }
//        }

