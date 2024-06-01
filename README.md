# CFSubHunter

This is a Bug Hunting Tool designed to automate two key processes in bug hunting: Subdomain Reconnaissance and Bypassing Cloudflare.

## Features

### Subdomain Reconnaissance

This feature uses two popular tools, `amass` and `sublist3r`, to enumerate subdomains of a given domain. The results from both tools are combined, sorted, and duplicates are removed. The unique subdomains are then probed using `httpx` to check their availability. The final list of probed subdomains is saved in a text file for further analysis.

### Bypassing Cloudflare

This feature is designed to bypass Cloudflare’s security measures and reveal the real IP address of a domain. It uses a Python script to bypass Cloudflare’s protections and retrieve the actual IP address behind the Cloudflare network.

## User Interface

The tool is designed with a user-friendly interface that prompts the user to choose between the two options. It’s written in Bash and Python, making it easy to modify and extend according to the user’s needs.

## Usage

1. **Subdomain Reconnaissance**: Enumerate and probe subdomains using `amass` and `sublist3r`.
2. **Bypassing Cloudflare**: Reveal the real IP address of a domain protected by Cloudflare.

---

### Requirements

Ensure you have the following tools pre-installed:
- [Amass](https://github.com/OWASP/Amass)
- [Sublist3r](https://github.com/aboul3la/Sublist3r)
- [httpx](https://github.com/projectdiscovery/httpx)

### Installation

Clone the repository and navigate to the directory:

```bash
git clone https://github.com/yourusername/CFSubHunter.git
cd CFSubHunter
