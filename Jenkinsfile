pipeline {
    agent {label 'manual1'} 
    options {
        // Timeout counter starts AFTER agent is allocated
    timestamps() 
        timeout(time:01 , unit: 'MINUTES')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
