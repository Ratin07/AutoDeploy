pipeline {
  agent any

stages {
   stage ('setup') {
          steps { sh './scripts/setup.sh'}
         }
   stage ('build') {
         steps { script { load 'jenkins/pipeline-config/build.groovy' }}
         }
   stage ('test') {
         steps { script { load ' jenkins/pipeline-config/test.groovy' }}
        }
   stage ('deploy') {
        steps { script { load ' jenkins/pipeline-config/test.groovy' }}
         }
   stage ('monitor') {
        steps { sh ' ./scripts/monitor.sh' }
         }
   stage ('cleanup') {
        steps { sh './scripts/cleanup.sh'}
         }
     }
}
