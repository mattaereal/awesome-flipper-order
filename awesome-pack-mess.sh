#!/bin/bash
## Download everythin idontcare!
echo "[+] Downloading the latest awesome flipper zero pack microsd files."
# Define the regular expression to match the filename
regexp='.*\/([^\/]+)$'

# Using GH api to get the latest files.
urls=$(curl --silent https://api.github.com/repos/unresolv/awesome-flipperzero-pack/releases/latest | jq -r '.assets[] | select(.name | contains("microsd")) | .browser_download_url')

while read -r url; do
    if [[ $url =~ $regexp ]]; then
        filename="${BASH_REMATCH[1]}"
        echo "[+] Downloading $filename..."

        # Download the file
        # curl -L -O "$url"
        wget --quiet --show-progress "$url"

        # Extract the contents of the file
        echo "[+] Extracting $filename"
        7z x "$filename" dumps/

        # Remove the downloaded file
        echo "[-] Removing $filename"
        rm "$filename"
    else
        echo "Failed to extract filename from URL: $url"
    fi
done <<< "$urls"
