pipeline {

    gent any 

    stages{

        stage('Clone'){
            steps {
                git branch:'main', url 'https://github.com/naefodtallh/DockerTask.git'
            }
            
        }

        stage('Build'){
            steps {
                sh 'pip3 install -r requirements'
            }
            
        }

        stage('Lint'){
            steps {
                sh 'pylint'
            }
            
        }

        stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t python:3 .' 
                sh 'docker tag python naefodtallh/python:3'
               
          }
        }

        stage('Publish image to Docker Hub') {  
            steps {
                withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
                   sh  'docker push naefodtallh/python' 
            }      
          }
        }

        /* stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 5000:8080 naefodtallh/python"
 
            }
        }

        stage('Run Docker container on remote hosts') {
             
            steps {
                sh "docker -H ssh://jenkins@---- run -d -p 5000:8080 naefodtallh/python"
 
            }
        }*/


    }

}