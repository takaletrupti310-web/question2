pipeline {
    agent any

    stages {
        stage('Fetch Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-python-app:latest .'
            }
        }

        stage('Run App in Docker') {
            steps {
                sh '''
                    docker rm -f my-python-app || true
                    docker run --name my-python-app -d my-python-app:latest
                    docker ps
                '''
            }
        }
    }
}
