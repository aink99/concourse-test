# A concourse pilene for test

# This is  how you Push your pipeline to concourse

Login:
* fly --target tutorial login --concourse-url http://127.0.0.1:8080 -u admin -p admin

Save credentials:
* fly --target tutorial sync


Upload pipeline
* fly -t tutorial sp -c pipeline.yml -p chef-test

Check builds
* $fly -t tutorial  builds

Check build for a specific jobs
* fly -t tutorial  builds -j chef-test4/cheftest


Watch job result
* fly -t tutorial watch -j  chef-test4/cheftest
* fly -t tutorial watch -j  chef-test4/cheftest -b1


Unpause pipeline
* fly -t tutorial  up -p chef-test4
unpaused 'chef-test4'

Pause pipeline
* fly -t tutorial  pp -p chef-test4
paused 'chef-test4'
