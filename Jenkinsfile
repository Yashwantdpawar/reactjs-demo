pipeline {
  agent any

  stages {
    // stage('Checkout') {
    //   steps {
    //     // Checkout the source code from the repository.
    //     git 'https://github.com/your-repo.git'
    //   }
    // }

    stage('Build') {
      steps {
        // Build the Docker image
        sh 'pwd && ls -lrt'
        sh 'chmod u+x build.sh'
        sh 'sh build.sh'
      }
    }

    stage('Push to Registry') {
      steps {
        // Push the Docker image to a container registry (e.g., Docker Hub)
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
        // some block
          sh "docker login -u ajaydhanvi17 -p ${dockerHubPwd}"
        }
        sh 'docker push ajaydhanvi17/myreactapp:latest'
      }
    }

    stage('Deploy') {
      steps {
        // Deploy the Docker container using a deployment script or orchestration tool (e.g., Docker Compose, Kubernetes)
        sh 'chmod u+x deploy.sh'
        sh 'sh deploy.sh'        
        // sh 'docker-compose up -d'  // Example: using Docker Compose
        // // or
        // sh 'kubectl apply -f deployment.yaml'  // Example: using Kubernetes
      }
    }
  }
}
