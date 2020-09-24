pipeline {
  agent any
  environment {
    SPRING_DATASOURCE_URI = credentials('URI')
    SPRING_DATASOURCE_USERNAME = credentials('SPRING_USERNAME')
    SPRING_DATASOURCE_PASSWORD = credentials('SPRING_PASSWORD')

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

    stage('Build Docker Images'){
      steps{
        sh './scripts/docker-build.sh'
      }
    }

    //stage('Configue AWS'){
    //  steps{
    //    sh './scripts/aws-config.sh'
    //  }
    //}

    stage('Build Kubernetes Services'){
      steps{
        sh './scripts/kubernetes.sh'
      }
    }
  }
}