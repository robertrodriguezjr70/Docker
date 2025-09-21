pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh '''
                 [ -f pipeline-test/] && echo "File exists"
                 #[ -f pipeline-test/Dockerfile ] && echo "File exists"
                '''
            }
        }
    }
}
