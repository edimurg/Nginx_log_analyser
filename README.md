# 🔎 Nginx_log_analyser
## Overview
The provided Bash script serves as a simple Nginx log analyzer, extracting and displaying the top five IP addresses, requested paths, response status codes, and user agents from a specified log file. The script includes error handling to ensure that a valid log file is provided before proceeding with the analysis.

## ⚡ Features
- Top 5 client IPs - shows the ip adresses with the highest number of requests.
- Top 5 most requested paths - identifies the most frequently requested paths.
- Top 5 most requested status codes - lists the most common HTTP status codes (e.g. 200,404,500)
- Top 5 user agents - displays the most common clients/browsers accessing the server.
- Error handling - validates input files and provides [INFO]/[Error] messages.
- Lightweight Bash + awk implementation - no external dependencies, works on any UNIX-like system.
- Portable - can be used on any server with acces to Nginx logs.

## 🚀 Instalation

Clone this repository:

``` bash
git clone https://github.com/edimurg/Nginx_log_analyser.git
```
Change permissions:

```bash
chmod +x nginx_log_analyser.sh
```
## 📝 Usage

Run the script:

```bash
./ngnix_log_analyser.sh ngnix_log_example
```

## 🤝 Contributing

I'm open to suggestions, improvements, and contributions!
If you have ideas or want to help improve this tool, feel free to:

- Open an issue for bugs or feature requests

- Submit a pull request with your changes

- Suggest edits to the README or documentation

- All contributions are welcome! 🔧📦
