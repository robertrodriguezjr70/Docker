pipeline {
    agent any

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
                sh '''
                   echo "Were in the test stage"
                   Add docker logon and push command here
                '''
            }
        }
    }
}
