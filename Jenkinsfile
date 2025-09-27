pipeline {
    agent any
    environment {
        fake_var = 'fakey fake'
    }
    stages {
        stage('Build image from dockerfile') {
            steps {
                sh '''
                 #[ -f pipeline-test/Dockerfile] && echo "File exists"
                 #docker build -t myapp:latest pipeline-test/jenkins/
                 docker build -t 09111190/myapp:latest pipeline-test/jenkins/
                 echo 'This is Roberts Jenkins file'
                '''
            }
        }
        stage('test') {
            steps {
                script {
                    // Use credentials securely
                    withCredentials([usernamePassword(
                        credentialsId: '001', // Replace with your Jenkins credentials ID
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )]) {
                sh '''
                   echo "Were in the test stage"
                   Add docker logon and push command here
                '''
            }
        }
    }
}
