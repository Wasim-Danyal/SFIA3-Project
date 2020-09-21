pipeline {
  agent any
  environment {
    MYSQL_DB = credentials('MYSQL_DB')
    MYSQL_USER = credentials('MYSQL_USER')
    MYSQL_PASSWORD = credentials('MYSQL_PASSWORD')

    SPRING_DATASOURCE_URI = credentials('SPRING_DATASOURCE_URI')
    SPRING_DATASOURCE_USERNAME = credentials('SPRING_DATASOURCE_USERNAME')
    SPRING_DATASOURCE_PASSWORD = credentials('SPRING_DATASOURCE_PASSWORD')

    DOCKER_USERNAME = credentials('DOCKER_USERNAME')
    DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')

    AWS_ACCESS_KEY = credentials('ACCESS_KEY')
    AWS_SECRET_ACCESS_KEY = credentials('SECRET_ACCESS_KEY')
  }

  stages {
    stage('Modify Scripts'){
      steps{
        sh 'chmod +x ./scripts/*'
      }
    }

    stage('Configure Environment'){
      steps{
        sh './scripts/config.sh'
      }
    }

    stage('Test Application'){
      steps{
        sh './scripts/test.sh'
      }
    }

    stage(''){
  }
}