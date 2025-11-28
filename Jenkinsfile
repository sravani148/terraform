pipeline {
    agent any

environment {
   AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
   AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
}
    stages {
        stage('scm') {
            steps {
                echo 'checkout'
                git branch: 'main', credentialsId: 'GitHub', url: 'https://github.com/sravani148/terraform.git'
            }
        }
        stage('terraform init'){
            steps{
                bat '''terraform init'''
            }
        }
        stage('terraform plan'){
            steps{
                bat '''terraform plan -out=ec2.txt'''
            }
        }
         stage('terraform apply'){
            steps{
                bat '''terraform apply -auto-approve ec2.txt'''
            }
        }
    }
}

