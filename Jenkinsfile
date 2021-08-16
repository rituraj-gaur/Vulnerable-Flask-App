pipeline {
	agent any
	properties([parameters([string(defaultValue: 'NULL', description: 'Checkmarx SAST: GITHUB repo of the URL to be scanned.', name: 'GIT_URL', trim: true), string(description: 'Checkmarx SAST: Project to which this Static Security Scan is to be mapped.', name: 'PROJECT_NAME', trim: true), choice(choices: ['\\CxServer\\PAS\\Product\\ECS\n\\CxServer\\PAS\\Product\\ECS\\PROD\n\\CxServer\\PAS\\Product\\ECS\\DEV', description: 'Team Name: Generally binds to the Product name (ECS/SDP/OBS)', name: 'TEAM_NAME'])])
	//stages {
        stage ("Git Checkout"){
            steps {
        	        git credentialsId: 'git-personal', url: "${GIT_URL}", branch: 'master'
        		    sh "echo Clone Repo Successfully...."
        		    }
        		}
        		stage ("CX Security Scan"){
        			steps{
        			    step([$class: 'CxScanBuilder', addGlobalCommenToBuildCommet: true, comment: '', configAsCode: true, credentialsId: '', excludeFolders: '', exclusionsSetting: 'global', failBuildOnNewResults: false, failBuildOnNewSeverity: 'HIGH', filterPattern: '''!**/_cvs/**/*, !**/.svn/**/*, !**/.hg/**/*, !**/.git/**/*, !**/.bzr/**/*,
                                                  !**/.gitgnore/**/*, !**/.gradle/**/*, !**/.checkstyle/**/*, !**/.classpath/**/*, !**/bin/**/*,
                                                  !**/obj/**/*, !**/backup/**/*, !**/.idea/**/*, !**/*.DS_Store, !**/*.ipr, !**/*.iws,
                                                  !**/*.bak, !**/*.tmp, !**/*.aac, !**/*.aif, !**/*.iff, !**/*.m3u, !**/*.mid, !**/*.mp3,
                                                  !**/*.mpa, !**/*.ra, !**/*.wav, !**/*.wma, !**/*.3g2, !**/*.3gp, !**/*.asf, !**/*.asx,
                                                  !**/*.avi, !**/*.flv, !**/*.mov, !**/*.mp4, !**/*.mpg, !**/*.rm, !**/*.swf, !**/*.vob,
                                                  !**/*.wmv, !**/*.bmp, !**/*.gif, !**/*.jpg, !**/*.png, !**/*.psd, !**/*.tif, !**/*.swf,
                                                  !**/*.jar, !**/*.zip, !**/*.rar, !**/*.exe, !**/*.dll, !**/*.pdb, !**/*.7z, !**/*.gz,
                                                  !**/*.tar.gz, !**/*.tar, !**/*.gz, !**/*.ahtm, !**/*.ahtml, !**/*.fhtml, !**/*.hdm,
                                                  !**/*.hdml, !**/*.hsql, !**/*.ht, !**/*.hta, !**/*.htc, !**/*.htd, !**/*.war, !**/*.ear,
                                                  !**/*.htmls, !**/*.ihtml, !**/*.mht, !**/*.mhtm, !**/*.mhtml, !**/*.ssi, !**/*.stm,
                                                  !**/*.bin,!**/*.lock,!**/*.svg,!**/*.obj,
                                                  !**/*.stml, !**/*.ttml, !**/*.txn, !**/*.xhtm, !**/*.xhtml, !**/*.class, !**/*.iml, !Checkmarx/Reports/*.*,
                                                  !OSADependencies.json, !**/node_modules/**/*''', fullScanCycle: 10, generatePdfReport: true, groupId: '359', highThreshold: 10, lowThreshold: 30, mediumThreshold: 20, password: '{AQAAABAAAAAQfL38SC5sZNTFCBDu86vFY6gnk53MITuDNA+pyWMtTcU=}', preset: '36', projectName: "${PROJECT_NAME}", sastEnabled: true, serverUrl: 'https://cx.dell.com', sourceEncoding: '1', username: '', teamPath: "${TEAM_NAME}",vulnerabilityThresholdEnabled: true, vulnerabilityThresholdResult: 'FAILURE', waitForResultsEnabled: true])
                        }
        		}
	//}
}
