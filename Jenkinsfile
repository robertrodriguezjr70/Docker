pipeline {
    agent any

    stages {
        stage('Build image from dockerfile') {
            steps {
                sh '''
                 #[ -f pipeline-test/Dockerfile] && echo "File exists"
                 docker build -t myapp:latest pipeline-test/jenkins/
                 echo 'This is Roberts Jenkins file'
                '''
            }
        }
        stage('test') {
            steps {
                sh '''
                   echo "Were in the test stage"
                   echo IpSecurity1! | docker login -u robert.rodriguez.jr.70@gmail.com --password-stdin
                   docker push robert.rodriguez.jr.70@gmail.com/myapp:latest
                   docker logout
                '''
            }
        }
    }
}
