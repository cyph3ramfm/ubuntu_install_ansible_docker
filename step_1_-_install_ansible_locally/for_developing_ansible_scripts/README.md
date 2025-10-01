# Ansible Development Tools Setup

This directory contains scripts for setting up a development environment for Ansible. These tools are optional and are only needed if you plan to develop Ansible playbooks or work with Ansible development.

## Contents

- `step_1_-_install_pipx.sh`: Installs pipx, a tool for installing and running Python applications in isolated environments
- `step_2_-_install_ansible-dev-tools.sh`: Installs ansible-dev-tools package using pipx

## Installation Steps

1. Install pipx first:
   ```bash
   sudo bash step_1_-_install_pipx.sh
   ```
   After installation:
   - Either restart your terminal
   - Or run: `source ~/.profile` to update your PATH

2. Install Ansible development tools:
   ```bash
   bash step_2_-_install_ansible-dev-tools.sh
   ```

## Verification

After installation, you can verify the setup by running:
```bash
pipx list
```
This should show `ansible-dev-tools` in the list of installed packages.

## What's Included

The ansible-dev-tools package provides several useful tools for Ansible development:
- `ansible-lint`: For checking playbook best practices and syntax
- `ansible-navigator`: TUI interface for working with Ansible content
- `molecule`: For testing Ansible roles
- Other development-related tools

## Note

These tools are optional and not required for basic Ansible usage. Install them only if you plan to:
- Develop Ansible playbooks
- Work on Ansible roles
- Contribute to Ansible projects
- Need advanced testing capabilities