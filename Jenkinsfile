pipeline {
    environment {
    PROJECT = "vm-terraform-test-gcloud"
    ZONE = "asia-northeast3-a"
    }
    agent any
    tools {
        terraform 'Terraform14'
        maven('maven3.0.5')

    }

    stages {  
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'iuop223', url: 'https://github.com/hwk27/project1' 
         }      
      }
        stage('TF Init&Plan') {
            steps {
                sh 'terraform init'
               
         }      
      }

        stage('TF Apply') {
            steps {
                sh 'terraform apply --auto-approve'
                }
        }
        
     } 
}
