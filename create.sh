bosh create-release --force --tarball paasta-on-demand-redis-release.tgz --name paasta-on-demand-redis-release --version 1.0

bosh upload-release paasta-on-demand-redis-release.tgz
