pipeline {
    agent {
        label 'build'
    }
    stages {
            stage('checkout-stage') {
                steps {
                    git branch: 'master', credentialsId: 'ashoksm', url: 'https://github.com/ashok77sm/docker-sample-java-webapp.git'
                }
            }   
	    stage('build-stage') {
                steps {
                   sh 'mvn clean package -DskipTests'
                }
            }
	    stage('Build Docker Image') {
                steps {
                   script {
                     sh 'docker build -t javaweb:v1 .'
                   }
                }
            }
	    stage('Run Docker Container') {
               steps {
                  script {
                    sh 'docker run -d -p 9000:8080 javaweb:v1'
                  }
               }
	    }
    }
}
