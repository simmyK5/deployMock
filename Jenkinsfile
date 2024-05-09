pipeline{
    agent any
    tools{
        docker tool 'hellloworld'
    }
    stages{
        stage('Clone Repo'){
            steps{
                git 'https://github.com/simmyK5/deployMock'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    bat '/usr/local/bin/docker build -t hellloworld-image'
                }
            }
        }
        stage('Run Docker Container'){
            steps{
                script{
                    bat '/usr/local/bin/docker run -p 8080:80 -t hellloworld-image'
                }
            }
        }

    }
}

