# System Maintenance Script

## Overview

`system_maintenance.sh` is a shell script designed to automate routine system maintenance tasks on Ubuntu. This script helps in keeping your system clean, updated, and running smoothly by performing various maintenance operations.

## Features

- **System Information**: Displays system information in ASCII art style using `screenfetch`.
- **System Update**: Updates and upgrades the system packages.
- **Disk Cleanup**: Removes unnecessary packages and clears package cache.
- **DNS Cache Management**: Displays and clears DNS cache using `resolvectl`.
- **Swap Space Management**: Clears and re-enables swap space.
- **Page Cache Management**: Frees up page cache, dentries, and inodes.

# Screenshots
![system_maintenance bash-screenshot-1](https://github.com/user-attachments/assets/cc25a197-6eb7-4c79-8bd9-4e7f76ef4c02)
![system_maintenance bash-screenshot-2](https://github.com/user-attachments/assets/81347a83-0318-4a73-86c0-69a697b2235b)

## Requirements

- A Linux-based operating system (Ubuntu)
- Sudo privileges
- Required packages: `screenfetch`, `resolvectl`

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/system_maintenance.git
    cd system_maintenance
    ```

2. Make the script executable:
    ```bash
    chmod +x system_maintenance.sh
    ```

3. Run the script with appropriate permissions:
    ```bash
    sudo ./system_maintenance.sh
    ```

## Configuration

You can customize the script by modifying the variables at the beginning of the `system_maintenance.sh` file. For example, you can specify additional directories to clean or services to restart.

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please create a pull request or open an issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Thanks to the open-source community for providing the tools and resources that made this script possible.

---

Feel free to adjust this template to better fit your needs. If there's anything else you'd like to add or modify, let me know!
