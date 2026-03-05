pipeline {
agent any

environment {
    AWS_REGION = "ap-south-1"
    ECR_REPO = "021891571564.dkr.ecr.ap-south-1.amazonaws.com/devops-project"
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

    stage('Security Scan - Trivy') {
        steps {
            sh 'trivy image --exit-code 1 --severity HIGH,CRITICAL devops-project'
        }
    }

    stage('Tag Image') {
        steps {
            sh 'docker tag devops-project:latest $ECR_REPO:latest'
        }
    }

    stage('Login to ECR') {
        steps {
            sh '''
            aws ecr get-login-password --region $AWS_REGION | \
            docker login --username AWS --password-stdin 021891571564.dkr.ecr.ap-south-1.amazonaws.com
            '''
        }
    }

    stage('Push Image') {
        steps {
            sh 'docker push $ECR_REPO:latest'
        }
    }
}

}

