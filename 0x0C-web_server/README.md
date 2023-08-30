# Web_server

## General
- **What is the main role of a web server?**
  The main role of a web server is to handle incoming HTTP (Hypertext Transfer Protocol) requests from clients (usually web browsers) and respond with the appropriate HTTP responses. It serves as the intermediary between the client and the web application or website, managing the communication and processing of data.

- **What is a child process?**
  A child process is a separate process that is created by a parent process. When a parent process spawns a child process, the child process inherits some of the characteristics of its parent but operates independently. Child processes are useful in many scenarios, including multitasking, parallel processing, and forking in web servers.

- **Why do web servers usually have a parent process and child processes?**
  Web servers typically use a parent-child process model to handle incoming client requests efficiently. The parent process is responsible for managing the core functionalities of the web server, such as listening for incoming connections and creating child processes. When a client request arrives, the parent process passes the request to an available child process. Each child process operates independently, allowing the web server to handle multiple client requests simultaneously and take advantage of multi-core processors.

- **What are the main HTTP requests?**
  The main HTTP requests are:
  1. GET: Used to request data from the server. It retrieves information identified by the request URL.
  2. POST: Used to submit data to the server to create or update a resource.
  3. PUT: Used to update a resource or create a new resource if it doesn't exist.
  4. DELETE: Used to request the removal of a resource from the server.
  5. PATCH: Used to apply partial modifications to a resource.
  6. HEAD: Similar to GET, but it only requests the headers of the resource without the actual data.
  7. OPTIONS: Used to request information about the communication options available for the target resource.
  8. CONNECT: Used to establish a network connection to a resource.
  9. TRACE: Used to retrieve a diagnostic trace of the current request-response cycle.

## DNS
- **What does DNS stand for?**
  DNS stands for Domain Name System.

- **What is the main role of DNS?**
  The main role of DNS is to translate human-readable domain names (wysedotng.tech) into IP addresses (like 54.236.46.220) that computers can understand. It acts as a decentralized system that allows users to access websites and services without needing to remember numeric IP addresses.

## DNS Record Types
- **A Record:**
  A stands for "Address" and is used to map a domain name to an IPv4 address. It associates a domain name (e.g., www.wysedotng.tech) with the corresponding numerical IP address (e.g., 192.168.0.1).

- **CNAME Record:**
  CNAME stands for "Canonical Name" and is used to create an alias for a domain name. It points one domain name to another domain name instead of an IP address. This is often used for subdomains or when a website needs to be accessed through multiple domain names.

- **TXT Record:**
  TXT stands for "Text" and is used to store any text-based information associated with a domain. It is often used for verification and authentication purposes, like SPF (Sender Policy Framework) records for email validation.

- **MX Record:**
  MX stands for "Mail Exchange" and is used to specify the mail server responsible for receiving email messages on behalf of a domain. It helps in routing emails
