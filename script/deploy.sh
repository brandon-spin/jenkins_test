echo 'ℹ️  Start build ℹ️'
npm run build
echo '✅ End build ✅'

echo 'ℹ️ Deploying ℹ️'
aws s3 sync dist/ s3://jenkins-test-deploy-bucket
echo '✅ Successfully deployed ✅'