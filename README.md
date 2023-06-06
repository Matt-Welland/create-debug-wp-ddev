# create-debug-wp-ddev
This simple bash script creates a simple test environment for Wordpress allowing developers to quickly conflict test without hassling with juggling environments. 

It uses DDEV where you can manage PHP version, SQL version and more. 

## Requirements
- [DDEV](https://ddev.readthedocs.io/en/stable/) v1.21.6+ with [WSL](https://ddev.readthedocs.io/en/stable/users/install/ddev-installation/#wsl2-docker-ce-inside-install-script) 

## How to use
Using your linux command line (WSL) navigate to the directory where `create.sh` exists and run `$ sh create.sh`, you should not need elevated permissions. 

This will create a new directory `test-environment` with a WP installation. 

Once you are done debugging and need to delete the code, `cd` into `test-environment` and run `$ sh delete.sh`
