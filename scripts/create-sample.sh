#!/bin/bash
read -p "Choose an option (libs / packages): " choice

if [ "$choice" = "libs" ] || [ "$choice" = "packages" ]; then
    source_dir="default"
    if [ "$choice" = "libs" ]; then
        dir="library"
    else
        dir="package"
    fi
    destination_dir="${choice}/new-${dir}"

    if [ -d "$destination_dir" ]; then
        echo "Destination directory $destination_dir already exists!"
        exit 1
    fi

    cp -r "$source_dir" "$destination_dir"

    echo "Contents of $source_dir copied to $destination_dir successfully!"
else
    echo "Invalid option. Please choose either 'libs' or 'packages'!"
    exit 1
fi
