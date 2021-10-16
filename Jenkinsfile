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

        
    }

}