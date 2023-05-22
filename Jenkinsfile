pipeline {
    agent any
    environment{
        microcare ='academy'
        devops ='customvariables'
    }
    stages {
        stage('Build') {
            step {
                //echo "${USER}"
               sh "printenv | sort"
            }
        }
         stage('Build1') {
            step {
                echo "${env.microcare}"
                echo "${env.devops}"
            }
        }
         stage('Build2') {
             when {          
                 not {
             branch "ruksANA"
                  }
             }
            step {
                echo 'Building..'
            }
        }
         stage('Build3') {
             when {
                 not {
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
