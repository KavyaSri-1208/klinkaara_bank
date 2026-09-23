def call(String imageName, String tag) {
    withCredentials([usernamePassword(
        credentialsId: 'docker-hub-creds',
        usernameVariable: 'DOCKER_USER',
        passwordVariable: 'DOCKER_PASS'
    )]) {
        sh "echo \$DOCKER_PASS | docker login -u \$DOCKER_USER --password-stdin"
        sh "docker push ${imageName}:${tag}"
    }
}
