pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh '''
                 #[ -f pipeline-test/Dockerfile] && echo "File exists"
                 docker build -t myapp:latest pipeline-test/jenkins/
                 echo 'This is Roberts Jenkins file'
                '''
            }
        }
    }
}
