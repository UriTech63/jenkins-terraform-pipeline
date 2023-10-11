pipeline {
  agent any
  
  stages {
     stage('Starting Point'){
        steps{
            echo "this is a starting point for the terraform pipeline"
        }
     }

     stage('Provision Infrastructure'){
        environment{
            AWS_ACCESS_KEY = credentials("secret-access-keys") // this will be used in future versions of Terraform to authenticate
            AWS_SECRET_ACCESS_KEY = credentials("aws-secret-access-key")
        
        }
        steps{
            sh "terraform init"
            sh "terraform apply --auto-approve"
        }
     }

     stage('Thank You'){
        steps{
            echo "Yaay successful TF deployment You're welcome!"
        }
     }


  }

}
