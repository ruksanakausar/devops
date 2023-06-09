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
              bat 'docker build -t node -f Dockerfile1 .'
            }
        }
        stage('Tag image'){
        steps {
            bat 'docker tag node ruksana123/node'
        }
        }
        stage('Push image'){
            steps {
                bat 'docker push ruksana123/node'
            }
        }
         stage('Run Image') {
           steps {
               bat 'docker run --name d9 -p 7730:80 -d node'
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
