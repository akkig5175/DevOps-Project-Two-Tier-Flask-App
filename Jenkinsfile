pipeline {
    agent any
    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/akkig5175/DevOps-Project-Two-Tier-Flask-App.git'
            }
        }

        stage('Build Docker Image on Master') {
            agent { label 'master' }   // 👈 Force build only on Jenkins master
            steps {
                sh 'docker build -t flask-app:latest .'
            }
        }

        stage('Deploy on Deployment Server') {
            agent { label 'deploy-node' }   // 👈 Deployment VM ka node label
            steps {
                sh 'docker compose down || true'
                sh 'docker compose up -d --build'
            }
        }
    }
}
