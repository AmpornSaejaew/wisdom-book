pipeline {
     agent {
          docker {
               image 'maven:3-amazoncorretto-17'
               args '-p 33333:8090'
          }
     }
     environment {
          HOME = '.'
     }
     stages {
          stage('Debug') {
                 steps {
                     script {
                         echo "Current workspace: ${env.WORKSPACE}"
                         echo "Current directory: ${pwd()}"
                     }
                 }
          }
          stage('Source') {
               steps {
                    git branch: 'main',
                        url: 'https://github.com/AmpornSaejaew/wisdom-book'
               }
          }
          stage('Build') {
               steps {
                    bat 'mvn package -DskipTests'
               }
          }
          stage('Test') {
               steps {
                    echo 'testing...'
               }
          }
          stage('Deploy') {
               steps {
                    bat 'java -jar ./target/book-1.0.jar'
               }
          }
     }
}
