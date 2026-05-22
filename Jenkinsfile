pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run PyTest') {
            steps {
                sh 'pytest -v'
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh 'robot firmwarewatch.robot'
            }
        }
    }
}