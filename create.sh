bosh create-release --force --tarball paas-ta-on-demand-redis-release.tgz --name paas-ta-on-demand-redis-release --version 1.0

bosh upload-release paas-ta-on-demand-redis-release.tgz
