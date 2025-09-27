pipeline {
    agent any
    environment {
         DOCKER_VERSION =  2.0
         USER_NAME = "Robert Rodriguez"
    }
    stages {
        stage('Build image from dockerfile') {
            steps {
                sh '''
                    # Check if Dockerfile exists
                    [ -f pipeline-test/Dockerfile ] && echo "File exists"
                    
                    # Build docker image
                    # docker build -t 09111190/myapp:1.0 pipeline-test/jenkins/
                    echo 'Build the Docker image'
                    docker build -t 09111190/myapp:$DOCKER_VERSION pipeline-test/jenkins/
                    echo 'Build completed'
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
                            echo 'Push image to Docker Hub'
                            echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                            docker push 09111190/myapp:$DOCKER_VERSION
                            echo '"$USER_NAME:", the image has been pushed to Docker Hub'
                        '''
                    }
                }
            }
        }
    }
}
