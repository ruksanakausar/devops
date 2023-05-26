pipeline {
    agent any
    environment{
        MICRO ='academy'
        GIT_CRED =credentials('git') //username:password //secretkey
    }
    stages {
        stage('Build') {
            steps {
                echo "${USER}"
              // bat('set')
              // sh "printenv | sort"
            }
        }
         stage('Build1') {
            steps {
                echo "${env.MICRO}"
                // def password = ${GIT_CRED_PSW}
                // sh'echo %env.GIT_CRED%'
                // echo"{password}"
                echo "${env.GIT_CRED_USR}"
            }
        }
         stage('Build2') {
             when {          
                 not {
             branch "ruksANA"
                  }
             }
            steps {
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
                echo "${env.MICRO}"
            }
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

}
