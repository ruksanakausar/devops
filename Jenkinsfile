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
              bat 'docker build -t ubuntu_jenkins .'
            }
        }
         stage('Tag Image') {
           
            steps {
               bat 'docker tag ubuntu_jenkins:latest ruksana123/ubuntu_jenkins:latest'
            }
        }
         stage('Push Image') {
          
            steps {
               bat 'docker login -u ruksana123 -p 123a@A345'
                bat 'docker push ruksana123/ubuntu_jenkins:latest'
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
