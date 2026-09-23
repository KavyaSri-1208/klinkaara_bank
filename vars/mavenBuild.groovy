def call(String goals = 'clean package') {
    echo ">>> Running Maven build with goals: ${goals}"
    sh "mvn ${goals}"
    echo ">>> Maven build completed."
}
