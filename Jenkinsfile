pipeline {
    agent {label "slave-2"}

    stages {
        stage('Build') {
            steps {
                bat "docker build -t atuldots/jenkin-react-pipeline E:\\Jenkins-slave\\slave-2\\workspace\\MyFirstPipeline"
            }
        }
        stage('Test') {
            steps {
                bat "docker rm -f jenkin-react-pipeline || true"
            }
        }
        stage('Deploy') {
            steps {
                echo "docker run -it -d -p 96:80 --name jenkin-react-pipeline atuldots/jenkin-react-pipeline"
            }
        }
    }
}