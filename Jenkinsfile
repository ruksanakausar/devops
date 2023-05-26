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
