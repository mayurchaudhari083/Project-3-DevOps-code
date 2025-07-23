pipeline {
    agent any
    environment {
        TF_WORKING_DIR = 'Project-3-DevOps-code/Application/ALB_ASG'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mayurchaudhari083/Project-3-DevOps-code.git'
            }
        }
        stage('Terraform Init') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Validate') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform validate'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform plan -var-file="dev.tfvars"'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKING_DIR}") {
                    sh 'terraform apply -auto-approve -var-file="dev.tfvars"'
                }
            }
        }
    }
}
