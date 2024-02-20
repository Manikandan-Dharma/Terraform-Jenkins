pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
          stage("Git Checkout"){
            steps{
                git branch: 'main', url: 'https://github.com/Manikandan-Dharma/Terraform-Jenkins.git'
            }
 }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Deploy Ansible and Tomcat') {
            steps {
                ansiblePlaybook playbook: 'install_ansible.yml', inventory: '/var/lib/jenkins/workspace/Terraform-Jenkins/TOMCAT-server1', become: true
                ansiblePlaybook playbook: 'deploy_tomcat.yml', inventory: '/var/lib/jenkins/workspace/Terraform-Jenkins/TOMCAT-server1', become: true
            }
        }
    }
}
