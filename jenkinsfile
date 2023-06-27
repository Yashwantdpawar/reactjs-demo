pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        // Checkout the source code from the repository.
        git 'https://github.com/your-repo.git'
      }
    }

    // stage('Build') {
    //   steps {
    //     // Build the Docker image
    //     sh 'sudo chmod u+x build.sh'
    //     sh 'sudo sh build.sh'
    //   }
    // }

    // stage('Push to Registry') {
    //   steps {
    //     // Push the Docker image to a container registry (e.g., Docker Hub)
    //     withCredentials([usernamePassword(credentialsId: 'docker-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
    //       sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
    //     }
    //     sh 'docker push ajaydhanvi17/myreactapp:latest'
    //   }
    // }

    // stage('Deploy') {
    //   steps {
    //     // Deploy the Docker container using a deployment script or orchestration tool (e.g., Docker Compose, Kubernetes)
    //     sh 'docker-compose up -d'  // Example: using Docker Compose
    //     // // or
    //     // sh 'kubectl apply -f deployment.yaml'  // Example: using Kubernetes
    //   }
    // }
  }
}
