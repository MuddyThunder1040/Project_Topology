pipeline {
    agent any

    environment {
        TF_VAR_aws_region = 'us-east-2'
    }

    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Manual Approval') {
            when {
                branch 'main'
            }
            steps {
                input message: 'Approve to Apply?'
            }
        }
        stage('Terraform Apply') {
            when {
                branch 'main'
            }
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
