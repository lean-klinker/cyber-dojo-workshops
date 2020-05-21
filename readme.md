# Cyber Dojo Setup Scripts

The scripts found in the `scripts` folder will setup cyber dojo on an Ubuntu server.

The order of the scripts is as follows:

1. `./scripts/setup-docker.sh`
    1. Logout and log back in once docker has been installed.
    1. The script will add your user to the docker group
1. `./scripts/setup-bash-profile.sh`
1. `./scripts/setup-cyber-dojo.sh`
1. `./scripts/start-cyber-dojo.sh`

## Running on AWS

I was unable to run cyber-dojo on a `t2.micro` I had to upgrade the instance to a `t2.small`.