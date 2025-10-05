node {
stage ('Deploy') {
echo "Deploy stage started.."
sh "mkdir -p ${env.WORKSPACE}/deploy"
sh "cp -r ${env.WORKSPACE/app/* ${env.WORKSPACE}/deploy/"
echo "Deployment done!"
sh "echo 'Deployment completed at $(date)' >> logs/deploy.log"
}
}

