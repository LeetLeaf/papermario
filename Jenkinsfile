pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                sh 'cp /usr/local/etc/roms/baserom_pm.z64 baserom_original.z64'
                sh 'make -j setup'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'make -j'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
