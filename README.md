# Ubuntu Install Ansible and Docker

This project provides an automated way to install Ansible and Docker on a Ubuntu server.

## Prerequisites

- Ubuntu operating system
- Sudo privileges on the target system
- Git installed (`sudo apt-get install git`)
- Internet connection for downloading packages

## Getting Started

### 1. Install Ansible

```bash
sudo bash step_1_-_install_ansible_locally/step_1_-_install_ansible_ubuntu.sh
```

### 2. Install Docker

Navigate to the Docker installation directory:
```bash
cd step_2_-_install_docker_locally
```

Clone the required Ansible role:
```bash
git clone https://github.com/geerlingguy/ansible-role-docker.git
```

Configure Docker users:
1. Open the defaults configuration file:
   ```bash
   nano ansible-role-docker/defaults/main.yml
   ```
2. Locate the `docker_users` list at the end of the file
3. Add your users inside the square brackets, separated by commas like in the following example:
   ```yaml
   docker_users: [user1, user2]
   ```
4. Save and exit:
   - Press `CTRL+X`
   - Press `Y` to confirm
   - Press `ENTER` to save

Run the Docker installation playbook:
```bash
ansible-playbook install_docker_playbook.yml --ask-become-pass
```

## Verification

### Verify Ansible Installation
```bash
ansible --version
```

### Verify Docker Installation
```bash
docker --version
docker ps
```

## Development Tools

If you plan to develop Ansible playbooks, optional development tools are available in the `step_1_-_install_ansible_locally/for_ansible_dev/` directory. See the [development tools README](step_1_-_install_ansible_locally/for_ansible_dev/README.md) for installation instructions.

## Troubleshooting

### Common Issues

1. **Permission Denied**
   - Ensure you have sudo privileges
   - Verify the scripts are executable: `chmod +x *.sh`

2. **Docker Access**
   - If you can't run Docker commands, verify your user is in the docker_users list
   - Log out and back in for group changes to take effect

3. **Ansible Role Not Found**
   - Ensure you're in the correct directory when running the playbook
   - Verify the ansible-role-docker directory exists

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.