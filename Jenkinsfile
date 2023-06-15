pipeline {
    agent any
    stages {
        stage('check out') {
            steps {
              checkout scm
            }
        }
        stage('docker compose stop') {
           steps {
               bat 'docker-compose down'
            }
        }
           stage('docker compose start') {
          
            steps {
               bat 'docker-compose up -d'
            }
        }
       stage('push image') {
           steps {
               bat 'docker login -u ruksana123 -p 123a@A345'
                bat ' docker push ruksana123/newone'
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
