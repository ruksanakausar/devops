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
              bat 'docker build -t node1 -f Dockerfile1 .'
            }
        }
        stage('Tag image'){
        steps {
            bat 'docker tag node1 ruksana123/node1'
        }
        }
        stage('Push image'){
            steps {
                bat 'docker push ruksana123/node1'
            }
        }
         stage('Run Image') {
           steps {
               bat 'docker run --name d2 -p 7740:3070 -d node1'
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
