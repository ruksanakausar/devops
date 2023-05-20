pipeline {
    agent any
    environment{
        microcare ='academy'
        devops ='customvariables'
    }
    stages {
        stage('Build') {
            steps {
                echo "${USER}"
              //  sh "printenv | sort"
            }
        }
         stage('Build1') {
            steps {
                echo '${microcare}'
                echo '${devops}'
            }
        }
         stage('Build2') {
             when {
             branch "ruksANA"
                  }
             }
            steps {
                echo 'Building..'
            }
        }
         stage('Build3') {
             when {
                branch "ruksANA"
                 }
             }
            steps {
                echo 'Building..'
            }
        }
    
    post { 
        aborted { 
            echo 'ABORTED'
        }
         success { 
            echo 'SUCCESS'
        }
         failure { 
            echo 'FAILURE'
        }
        changed { 
            echo 'FAILURE'
        }
    }
