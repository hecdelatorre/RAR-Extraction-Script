# RAR Extraction Script

## Overview
This Bash script automates the extraction of RAR files, creating a clean directory structure and handling the extraction process quietly.

## Features
- Gathers a list of RAR files in the specified directory.
- Creates or deletes the 'Contents' folder for extracted files.
- Extracts RAR files into the 'Contents' folder, keeping the structure.
- Unzips each RAR file in its respective folder with silent output.
- Deletes the successfully extracted RAR files.

## Usage
1. Run the script in the desired directory.
2. Enter the directory where the script will be executed.
3. The script will:
   - List available RAR files.
   - Manage the 'Contents' folder.
   - Extract RAR files into the 'Contents' folder.
   - Unzip each RAR file in its respective folder.
   - Delete the successfully extracted RAR files.

## Instructions
- Ensure you have 'rar' and 'unrar' installed on your system.
- Run the script by executing: `./index.sh > README.md`.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- RAR and UNRAR are products of WinRAR, created by Alexander Roshal.
