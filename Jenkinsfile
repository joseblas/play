node {
  checkout scm
  try {
    docker.image('gerritforge/play-sbt-8-jdk-alpine').inside {
      stage('Build') {
        sh 'sbt compile'
      }
      stage('Test') {
        sh 'sbt 'test'
      }
    }
    gerrit.review("Verified", 1, "It works !")
  } catch (e) {
    gerrit.review("Verified", -1, "Breaks the build ;-(")
    throw e
  }
}
