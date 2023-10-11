piepline {
    agent any


    stages {
        stage("Starting Point"){
            steps{
                echo "this is the begining of terraform"
            }

        }
        stage("Provision Infrastructure"){
            environment{
             AWS_ACCESS_KEY = credentials('secret-access-keys') // this will be used for aws access key id.
             AWS_SECRET_ACCESS_KEY = credentials("aws-secret-access-key")

            }
            stages{
                sh "terraform init"
                sh "terraform apply --auto-approve"
            }
        }
        stage("Thank you"){
            steps{
                echo "Yayyy Successful TF deployment You're welcome"
            }
        }
        stage
    }
}