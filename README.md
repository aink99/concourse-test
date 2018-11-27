# A concourse pilene for test

# This is  how you Push your pipeline to concourse

* fly --target tutorial login --concourse-url http://127.0.0.1:8080 -u admin -p admin
* fly --target tutorial sync
* fly -t tutorial sp -c pipeline.yml -p chef-test
