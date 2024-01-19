# RAR Extraction Script

This bash script automates the extraction of RAR archives and their subsequent contents in a structured manner. It also includes instructions for installing the `rar` and `unrar` commands.

## Prerequisites

Before using the script, ensure that the `rar` and `unrar` commands are installed on your system. Follow the steps below to install these commands:

### For Bash or Zsh Users:

```bash
curl -fsSL https://www.win-rar.com/fileadmin/winrar-versions/rarlinux-x64-624.tar.gz | sudo tar zxvf - -C /opt
echo 'export PATH=$PATH:/opt/rar' >> ~/.bashrc  # For Bash users
# or
echo 'export PATH=$PATH:/opt/rar' >> ~/.zshrc   # For Zsh users
```

Note: Make sure to check [WinRAR's official website](https://www.win-rar.com/download.html) for the most recent version.

## Usage

1. Ensure the script has execute permissions:
   
   ```bash
   chmod +x index.sh
   ```

2. Run the script either by cloning the repository and executing:
   
   ```bash
   ./index.sh
   ```
   
   Or without cloning the repository using the following command:
   
   ```bash
   bash -c "$(curl -fsSL http://tiny.cc/jwb7wz)"
   ```
   
   ```bash
   bash -c "$(curl -fsSL https://gitlab.com/hecdelatorre/rar-extraction-script/-/raw/main/index.sh)"
   ```

3. The script will prompt you for the directory where it will be executed.

4. It will then gather RAR files, create a "Contents" folder, extract RAR files into it, and finally unzip each RAR file in its respective folder.

## Important

- The script uses the `rar` and `unrar` commands, which may not be available in the default repositories.
- Choose the appropriate command for your shell (Bash or Zsh) and update the corresponding configuration file.

Feel free to customize the script to suit your needs!

## License

This script is released under the [GPL v3 License](LICENSE).
