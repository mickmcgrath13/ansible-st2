#!/bin/sh

# https://github.com/walokra/docker-ansible-playbook
# build with
# docker build -t ansible-st2 .

docker run \
  --rm \
  --name ansible-st2 \
  -v $(pwd):/ansible/playbooks \
  -v ~/Projects/stackstorm/aws/keys/stackstorm-bitovi-demo.pem:/home/ansible-st2/keys/st2.pem \
  -it \
  ansible-st2


