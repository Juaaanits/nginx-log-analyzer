🖥️ Nginx Log Analyzer
A lightweight and straightforward Bash script to analyze Nginx access logs.
Perfect for quickly identifying top visitors, most requested paths, and common response codes.

⚙️ Features
The `nginx-log-analyzer.sh` script provides:

👥 Top 5 IP Addresses — Displays the IPs with the most requests.  
📂 Top 5 Most Requested Paths — Shows the most accessed endpoints with `/api` prepended for clarity.  
📊 Top 5 Response Status Codes — Lists the most common HTTP response codes.  

🚀 Usage
Clone the repository or manually copy the script to your server:

```bash
git clone https://github.com/Juaaanits/nginx-log-analyzer.git
cd nginx-log-analyzer
```

Make the script executable:

```bash
chmod +x nginx-log-analyzer.sh
```

Run the script:
```bash
./nginx-log-analyzer.sh
```

📂 Example Output:

```bash
=========== Nginx Log Analyzer ========================
Top 5 IP Addresses with the most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/api/v1-health - 4560 requests
/api/ - 270 requests
/api/v1-me - 232 requests
/api/v1-list-workspaces - 127 requests
/api/v1-list-timezone-teams - 75 requests

Top 5 response status codes:
200 - 7509 requests
400 - 30 requests
404 - 24 requests
500 - 7 requests
```

📦 Requirements

- Linux-based system
- Bash shell (/bin/bash)
- Standard utilities:
  - awk
  - sort
  - uniq
  - head

💡 Note
Make sure your Nginx logs are in a file named `logs` or adjust the script accordingly. The script expects the **standard Nginx combined log format**.

🔗 Project Link
🌐 [Roadmap.sh Project Page](https://roadmap.sh/projects/nginx-log-analyser)

👤 Author
Juanito M. Ramos II  
GitHub: [https://github.com/Juaaanits](https://github.com/Juaaanits)

📜 License
This project is licensed under the MIT License.

✅ Key Improvements

- Prepends `/api` to endpoints for clarity in reporting.  
- Accurately counts top IP addresses, paths, and response codes.  
- Provides a simple, readable output with headers for each section.  
- Fully compatible with standard Nginx combined logs.

