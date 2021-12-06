def response = "None"

pipeline {
    agent any
    
    stages {
        stage('Initialize') {
            steps {
                echo 'Stage 001'
            }
        }

        stage('Build') {
            
            steps {
                dir(path: './LibraryApp/LibraryApp'){
                    sh 'dotnet build LibraryApp.csproj'
                }
            }
        }

        stage('Send to S3') {
            steps {
                sh 'pwd;ls -l;/usr/bin/aws s3 ls s3://donet-build;'
                sh 'tar -cvf project.tar .;ls -l; /usr/bin/aws s3 cp project.tar s3://donet-build/project.tar'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo $jumphost; ssh jumpHost "/usr/bin/aws s3 cp s3://donet-build/project.tar . && tar -xvf project.tar && ls -l && pwd"'
            }
        }
    }
}