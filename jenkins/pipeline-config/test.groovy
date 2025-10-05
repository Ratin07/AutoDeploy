node {
stage ('Test') {
echo "Test stage started.."
def deployDir = "${env.WORKSPACE}/deploy"
if (fileExists(deployDir)) {
echo "Deploy folder exists. Test passed!"
sh "echo 'Test completed at $(date)' >> logs/build.log"
} else {
echo "Deploy folder missing. Test warning"
}
}
}
