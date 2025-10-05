node {
stage('Build') {
echo "Build stage started..."
def appDir =  "${env.WORKSPACE}/app"
if (fileExists(appDir + '/index.html')) {
echo "App files found. Build success!"
sh "echo 'Build completed at $(date)' >> logs/build.log"
} else {
error "Build failed! App files missing"
}
}
}
