pipeline {
    agent any
    tools {
        maven 'Maven-3.8.6'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t klinkaara-bank:${BUILD_NUMBER} .'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to Tomcat...'
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
        }
    }
}
