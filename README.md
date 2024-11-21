# A Puppet Bolt Control Repository

* [What You Get From This control\-repo](#what-you-get-from-this-control-repo)
* [Copy This Repo Into Your Own Git Server](#copy-this-repo-into-your-own-git-server)


## What You Get From This bolt-control-repo

This is a template [control repository](https://puppet.com/docs/pe/latest/control_repo.html) that has the minimum amount of scaffolding to make it easy to get started with [puppet-bolt](https://www.puppet.com/docs/bolt/latest/bolt.html) for serverless catalog deployments.  It's structure is based on the Puppeteers introduction to [serverless puppet with bolt](https://www.puppeteers.net/blog/serverless-puppet-with-control-repo-hiera-roles-and-profiles-and-puppet-bolt/).

The important files and items in this template are as follows:

* Basic example of roles and profiles.
* An example Hiera configuration file and data directory with pre-created common.yaml and nodes directory.
* A site-modules directory for roles, profiles, and any custom modules for your organization.
* An example bolt project configuration, inventory, and plan.

Here's a visual representation of the structure of this repository:

```
bolt-control-repo/
├── bolt-project.yaml                     # Bolt project configuration file.  The modulepath and modules to install go here.
├── data/                                 # Hiera data directory.
│   ├── nodes/                            # Node-specific data goes here.
│   ├── common.eyaml                      # Common encrypted data goes here.
│   └── common.yaml                       # Common data goes here.
├── inventory.yaml                        # Inventory of nodes to deploy to goes here.
├── keys/                                 # Eyaml keys go here.
├── site-modules/                         # This directory contains site-specific modules and is added to $modulepath.
│   ├── profile/                          # The profile module.
│   └── role/                             # The role module.
├── plans/                                # FIXME: Describe the purpose of this file
└── hiera.yaml                            # Hiera's configuration file. The Hiera hierarchy is defined here.
```

## Copy This Repo Into Your Own Git Server

1. Create a bare repository on the your git server.
1. Clone this control repository to your laptop/workstation:
    * `git clone <repository url>`
    * `cd bolt-control-repo`
1. Remove this repository as the origin remote:
    * `git remote remove origin`
1. Add your desired repository as the origin remote:
    * `git remote add origin <url of your git repository>`
1. Push the production branch of the repository from your machine up to your git server
