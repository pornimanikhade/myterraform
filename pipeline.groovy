pipeline {
    agent any 
    stages {
        stage('Pull') { 
            steps {
                git branch: 'main', url: 'https://github.com/ABHICLOUDS/student-ui.git'
                sh '''ls
                  pwd'''
            }
        }
        stage('Build') { 
            steps {
            sh 'mvn clean package'
            }
        }
        stage('Deploy') { 
            steps {
               echo 'deploy stage'
            }
        }
    }
}