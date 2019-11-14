bosh delete-deployment -d paas-ta-on-demand-redis-service --force
bosh delete-release paas-ta-on-demand-redis-release

rm -r dev_releases
rm -r .dev_builds/
rm -r paas-ta-on-demand-redis-release.tgz

