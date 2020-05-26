# Cyber Dojo Setup Scripts

The scripts found in the `scripts` folder will setup cyber dojo on an Ubuntu server.

**IMPORTANT**: All scripts are intended to be run at the root of this repository. The scripts use paths that are relative to the root.

The order of the scripts is as follows:

1. `./scripts/setup-bash-profile.sh`
1. `./scripts/setup-docker.sh`
    1. Logout and log back in once docker has been installed.
    1. The script will add your user to the docker group
1. `./scripts/start-cyber-dojo.sh`

## Running on AWS

I was unable to run cyber-dojo on a `t2.micro` I had to upgrade the instance to a `t2.small`.

## Resources

- [Adding a new Language + Test Framework](https://blog.cyber-dojo.org/2016/08/adding-new-language-and-unit-test.html)

- [Creating Own Starting Point](https://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html)