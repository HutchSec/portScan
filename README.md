# portScan

A simple and lightweight Bash script for scanning open ports on a target host.

Designed for quick checks and basic enumeration, `portScan.sh` provides an easy way to identify open TCP ports without relying on heavy tools.

---

## Overview

`portScan` is a minimal port scanning utility written in Bash. It allows you to:

* Scan a target IP or hostname
* Identify open ports
* Optionally define custom port ranges

This tool is useful for quick reconnaissance, troubleshooting, and learning how port scanning works at a low level.

---

## Features

* Fast and lightweight Bash implementation
* Scans TCP ports on a given host
* Supports custom port ranges
* No external dependencies beyond standard system tools
* Easy to modify and extend

---

## Requirements

* Bash (Linux/macOS or WSL)
* Basic networking utilities (e.g., `/dev/tcp`, `nc`, or similar depending on implementation)

---

## Usage

Make the script executable:

```bash
chmod +x portScan.sh
```

Run a basic scan:

```bash
./portScan.sh <target>
```

Scan with a custom port range:

```bash
./portScan.sh <target> <start_port> <end_port>
```

---

## Examples

```bash
./portScan.sh 192.168.1.1
./portScan.sh example.com 1 1024
./portScan.sh 10.10.10.10 20 80
```

---

## Output

The script typically returns a list of open ports and associated services (if detectable), for example:

```
PORT     STATE    SERVICE
22/tcp   open     ssh
80/tcp   open     http
443/tcp  open     https
```

---

## How It Works

* Iterates through a range of ports
* Attempts to establish a TCP connection to each port
* Reports ports that respond as open
* Optionally maps ports to known services

This approach is similar to other Bash-based scanners that rely on system-level networking features rather than full scanning frameworks ([GitHub][1]).

---

## Use Cases

* Quick internal network checks
* Verifying firewall rules
* Learning port scanning fundamentals
* Lightweight alternative to tools like Nmap

---

## Limitations

* Slower than optimized tools like Nmap or Masscan
* TCP-only (no UDP scanning unless extended)
* Limited service detection
* Not intended for large-scale scanning

---

## Future Improvements

* Add UDP scanning support
* Improve service detection
* Add parallel scanning for speed
* Input validation for targets and ports

---

## License

MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to:

* Use
* Copy
* Modify
* Merge
* Publish
* Distribute
* Sublicense
* Sell copies of the Software

subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

---

## Disclaimer

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO:

* MERCHANTABILITY
* FITNESS FOR A PARTICULAR PURPOSE
* NONINFRINGEMENT

IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[1]: https://github.com/mia0x1/portscan?utm_source=chatgpt.com "mia0x1/portscan: A simple TCP port scanner written in Bash."
