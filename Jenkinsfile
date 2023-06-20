pipeline {
  agent any
  tools {
    maven "MAVEN3"
  }
  stages {
    stage("Check out") {
      steps {
        git branch: 'main', url: 'https://github.com/yhlica/MavenProject-4-PipelineNoJenkinsfile'
      }
    }

    stage("Build maven project") {
      steps {
        sh 'mvn clean install'
      }
    }

    stage("Unit test") {
      steps {
        sh "mvn test"
      }
    }

    stage("Docker build") {
      steps {
        script {
          sh 'docker build -t yli202c/mavenproject4docker:1.3 .'
        }
      }
    }
  }
}
