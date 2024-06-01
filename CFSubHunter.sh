#!/bin/bash

echo "Welcome to the Bug Hunting Tool"
echo "Please select an option:"
echo "1. Subdomain Recon"
echo "2. Bypass Cloudflare"

read -p "Enter your choice: " choice

case $choice in
    1)
        echo "Starting Subdomain Recon..."
        read -p "Enter the domain: " domain
        echo "Running amass..."
        amass enum -d $domain > amass.txt
        echo "Running sublist3r..."
        sublist3r -d $domain > sublist3r.txt
        echo "Sorting and removing duplicates..."
        sort -u amass.txt sublist3r.txt > sorted.txt
        echo "Probing with httpx..."
        cat sorted.txt | httpx > probed.txt
        echo "Subdomain Recon completed. Results are stored in probed.txt"
        ;;
    2)
        echo "Bypassing Cloudflare..."
        python3 cloudflare_bypass.py
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac
