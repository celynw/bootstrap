# Ansible Playbook for a New System

## Run

For a desktop distribution:

```bash
curl -LsSf https://raw.githubusercontent.com/celynw/bootstrap/master/bootstrap_desktop.sh | sh
```

For a server distribution:

```bash
curl -LsSf https://raw.githubusercontent.com/celynw/bootstrap/master/bootstrap_server.sh | sh
```

## Description

Part of an effort to fully set up a new system with software and dotfiles.
This part helps to generate a new SSH key and register it with your GitHub account.

The remaining steps are assumed to be in a private repository.

## Steps

1. Log into new system
1. Log into GitHub in Firefox
1. Run the script by running the command above
   - The "BECOME password" to be entered is your `sudo` password
1. Any remaining steps requiring full SSH access to the GitHub account can now be completed
