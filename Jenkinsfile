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
               sh 'docker-compose down'
            }
        }
           stage('docker compose start') {
          
            steps {
               sh 'docker-compose up -d'
            }
        }
        
         stage('push image') {
          
            steps {
               sh 'sudo docker login -u ruksana123 -p 123a@A345'
                sh 'sudo docker push ruksana123/newone'
               // sh 'sudo docker push ruksana123/nginx'
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
