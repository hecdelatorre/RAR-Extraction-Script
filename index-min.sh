#!/bin/bash
get_execution_directory(){ read -p "Enter the directory where the script will be executed: " execution_dir;if [ ! -d "$execution_dir" ];then echo "Error: The specified directory does not exist. Aborting.";exit 1;fi;cd "$execution_dir"||exit 1;}
rar_info=()
gather_rar_files(){ local rar_files=(*.rar);echo "List of RAR files:";for rar_file in "${rar_files[@]}";do echo "$rar_file";done;}
manage_contents_folder(){ local contents_folder="Contents";if [ -d "$contents_folder" ];then echo "Deleting existing \"$contents_folder\" folder...";rm -rf "$contents_folder";fi;echo "Creating \"$contents_folder\" folder...";mkdir "$contents_folder";}
extract_rar_files(){ local rar_files=(*.rar);local contents_folder="Contents";for rar_file in "${rar_files[@]}";do rar x "$rar_file" -d "$contents_folder" -inul -o+;done;echo -e "\nResulting RAR files and their paths:";while IFS= read -r rar_path;do rar_info+=("$rar_path");echo "$rar_path";done < <(find "$contents_folder" -type f -name "*.rar");echo -e "\n";}
unzip_in_respective_folders(){ for rar_path in "${rar_info[@]}";do folder_path=$(dirname "$rar_path");cd "$folder_path">/dev/null||exit 1;rar_file_name=$(basename "$rar_path");echo "Extracting from $rar_file_name";unrar x "$rar_file_name" -inul -o+;if [ $? -eq 0 ];then rm -vf "$rar_file_name";echo -e " OK\n";else echo "Error: Failed to extract $rar_file_name";fi;cd - > /dev/null || exit 1;done;}

get_execution_directory;gather_rar_files;manage_contents_folder;extract_rar_files;unzip_in_respective_folders
