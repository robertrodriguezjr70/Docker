pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh '''
                 [ -f pipeline-test/Dockerfile ] && echo "File exists"
                '''
            }
        }
    }
}
