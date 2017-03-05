# mesos-cluster repository

Repository provides tool for mesos cluster fast deploy through Ansible and/or Vagrant.

This installation is based on debian:jessie (64 bits) distribution.

## Deploy

You can customize parameters to manage the deployment without any code modifications. This can be reach by setting the environment variables while deploying or provisioning.

To deploy the stand it enough to run `vagrant up` inside of the root of the repository. This will deploy the following configuration:

- 3 master nodes (zookeeperd, mesos-master)
- 2 slave nodes (mesos-slave)

## Customization

Environment variables:

- REPO_COUNTRY: the code of the country which is the nearest to the stand. This country prefix will be used in apt sources.list files.
- MESOS_MASTERS [default=3]: mesos master nodes amount.
- MESOS_SLAVES [default=2]: mesos slave nodes amount.
