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
              bat 'docker build -t nginx02 -f Dockerfile.'
            }
        }
        stage('Tag image'){
        steps {
            bat 'docker tag nginx02 ruksana123/nginx02'
        }
        }
        stage('Push image'){
            steps {
                bat 'docker push ruksana123/nginx02'
            }
        }
         stage('Run Image') {
           steps {
               bat 'docker run --name d6 -p 7770:80 -d nginx02'
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
