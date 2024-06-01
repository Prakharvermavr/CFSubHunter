import socket
import cfscrape

def bypass_cloudflare(domain):
    scraper = cfscrape.create_scraper() 
    print("Bypassing Cloudflare's security for domain:", domain)
    try:
        response = scraper.get("http://" + domain).content.decode("UTF-8")
        print("Response from the domain:")
        print(response)
    except Exception as e:
        print("An error occurred while trying to bypass Cloudflare's security:", str(e))

    print("Getting the real IP address for the domain:", domain)
    try:
        real_ip = socket.gethostbyname(domain)
        print("The real IP address of the domain is:", real_ip)
    except Exception as e:
        print("An error occurred while trying to get the real IP address:", str(e))

domain = input("Enter the domain: ")
bypass_cloudflare(domain)
