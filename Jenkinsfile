pipeline {
    agent any
    stages {
        stage('check out') {
            steps {
              checkout scm
            }
        }
         stage('Build Image') {
            steps {
              bat 'docker build -t alpine02 -f Dockerfile .'
            }
        }
        stage('Tag image'){
        steps {
            bat 'docker tag alpine02 ruksana123/alpine02'
        }
        }
        stage('Push image'){
            steps {
                bat 'docker push ruksana123/alpine02'
            }
        }
         stage('Run Image') {
           steps {
               bat 'docker run --name d7 -p 7720:80 -d alpine02'
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
