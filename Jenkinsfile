pipeline {
    agent any

    environment {
        PATH = "/opt/homebrew/bin:$PATH"   // ✅ Important for terraform tfenv/mac
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/MuddyThunder1040/Project_Topology.git'
            }
        }

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
            steps {
                timeout(time: 5, unit: 'MINUTES') {
                    input message: 'Do you want to apply the Terraform plan?', ok: 'Yes, Apply'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
  
    post {
        success {
            echo '✅ -Terraform Build and Apply Successful!'
        }
        failure {
            echo '❌ Terraform Build Failed.'
        }
    }
}
