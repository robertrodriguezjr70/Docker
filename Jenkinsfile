pipeline {
    agent any
    environment {
        fake_var = 'fakey fake'
    }
    stages {
        stage('Build image from dockerfile') {
            steps {
                sh '''
                    # Check if Dockerfile exists
                    [ -f pipeline-test/Dockerfile ] && echo "File exists"
                    
                    # Build docker image
                    # docker build -t 09111190/myapp:latest pipeline-test/jenkins/
                    docker build -t 09111190/myapp:1.0 pipeline-test/jenkins/
                    echo 'This is Roberts Jenkins file'
                '''
            }
        }

        stage('Push image to Docker Hub') {
            steps {
                script {
                    // Use credentials securely
                    withCredentials([usernamePassword(
                        credentialsId: '001', // Replace with your actual Jenkins credentials ID
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )]) {
                        sh '''
                            echo "Push image to Docker Hub"
                            echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                            docker push 09111190/myapp:1.0
                        '''
                    }
                }
            }
        }
    }
}
