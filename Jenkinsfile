pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/hynady/demo-jenkins' // Thay username bằng tên người dùng GitHub của bạn
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run my-node-app npm test' // Bạn có thể thêm test script vào package.json
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'kubectl apply -f k8s/deployment.yaml'
                }
            }
        }
        stage('Monitoring') {
            steps {
                echo 'Set up monitoring here'
            }
        }
    }
}
