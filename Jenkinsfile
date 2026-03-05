pipeline {
    agent any

    environment {
        AWS_REGION = "ap-south-1"
        ECR_REPO = "123456789.dkr.ecr.ap-south-1.amazonaws.com/devops-project"
    }

    stages {

        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/JoyalBBiju/devops-capstone-project'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-project .'
            }
        }
