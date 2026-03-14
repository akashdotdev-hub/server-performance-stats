@@ -1,14 +1,213 @@
Overview
This project is a simple Bash script that analyzes and displays key server performance statistics directly from the terminal.
# 📊 Server Performance Stats

It provides a quick snapshot of system health including:
<div align="center">

-CPU usage
-Memory usage
-Disk usage
-Top CPU consuming processes
-Top Memory consuming processes
![Bash](https://img.shields.io/badge/bash-%235100CA?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/status-active-brightgreen?style=for-the-badge)

The goal of this script is to practice Linux command-line tools like top, awk, free, df, and ps while building a useful system monitoring utility.
A lightweight, interactive Bash script for real-time server performance monitoring directly from your terminal.

[Features](#-features) • [Quick Start](#-quick-start) • [Installation](#-installation) • [Usage](#-usage) • [Contributing](#-contributing)

</div>

---

## 📋 Table of Contents

- [Overview](#overview)
- [✨ Features](#-features)
- [🚀 Quick Start](#-quick-start)
- [📦 Requirements](#-requirements)
- [🛠️ Installation](#-installation)
- [📖 Usage](#-usage)
- [📊 What It Monitors](#-what-it-monitors)
- [🎯 Learning Goals](#-learning-goals)
- [🤝 Contributing](#-contributing)
- [📝 License](#-license)

---

## Overview

**Server Performance Stats** is a simple yet powerful Bash script that provides a quick snapshot of your system's health. Monitor CPU, memory, disk usage, and identify resource-hungry processes all from your terminal—no GUI needed!

Perfect for system administrators, DevOps engineers, and anyone who wants to understand their server's performance at a glance.

---

## ✨ Features

| Feature | Status | Description |
|---------|--------|-------------|
| 🔴 CPU Usage | ✅ | Real-time CPU utilization monitoring |
| 🟢 Memory Usage | ✅ | Available and used memory statistics |
| 💾 Disk Usage | ✅ | Filesystem capacity and usage breakdown |
| ⚡ Top CPU Processes | ✅ | Identify CPU-hungry processes instantly |
| 🎯 Top Memory Processes | ✅ | Spot memory-intensive applications |
| 🎨 Clean Output | ✅ | Formatted terminal display for easy reading |

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/akashdotdev-hub/server-performance-stats.git

# Navigate to the directory
cd server-performance-stats

# Make the script executable
chmod +x server-performance-stats.sh

# Run it!
./server-performance-stats.sh
```

---

## 📦 Requirements

- **Bash** 4.0 or higher
- Linux/Unix-based operating system
- Standard Linux utilities:
  - `top`
  - `awk`
  - `free`
  - `df`
  - `ps`

> ℹ️ These tools are typically pre-installed on most Linux distributions.

---

## 🛠️ Installation

### Method 1: Clone & Run
```bash
git clone https://github.com/akashdotdev-hub/server-performance-stats.git
cd server-performance-stats
chmod +x server-performance-stats.sh
./server-performance-stats.sh
```

### Method 2: Direct Download
```bash
wget https://raw.githubusercontent.com/akashdotdev-hub/server-performance-stats/main/server-performance-stats.sh
chmod +x server-performance-stats.sh
./server-performance-stats.sh
```

### Method 3: Add to PATH (Optional)
```bash
sudo cp server-performance-stats.sh /usr/local/bin/server-stats
chmod +x /usr/local/bin/server-stats

# Now run from anywhere
server-stats
```

---

## 📖 Usage

### Basic Usage
```bash
./server-performance-stats.sh
```

### Example Output
```
╔════════════════════════════════════════╗
║   SERVER PERFORMANCE STATISTICS        ║
╚════════════════════════════════════════╝

📊 CPU Usage:       45.2%
🟢 Memory Usage:    62.1% (4.2GB / 6.8GB)
💾 Disk Usage:      73.5% (/dev/sda1)

⚡ Top 5 CPU Consuming Processes:
   1. chrome       18.5%
   2. node         12.3%
   3. python       8.7%

🎯 Top 5 Memory Consuming Processes:
   1. docker       28.5%
   2. firefox      15.2%
   3. vscode       9.8%
```

---

## 📊 What It Monitors

### CPU Usage
Displays current CPU utilization percentage across all cores, helping you identify system load issues.

### Memory Usage
Shows:
- Used memory
- Available memory
- Total memory
- Usage percentage

### Disk Usage
Lists all mounted filesystems with:
- Total capacity
- Used space
- Available space
- Usage percentage

### Top Processes
**CPU Heavy:** Identifies the processes consuming the most CPU resources

**Memory Heavy:** Shows which applications are using the most RAM

---

## 🎯 Learning Goals

This project is designed to help you master:

- ✅ Bash scripting fundamentals
- ✅ System command-line tools (`top`, `awk`, `free`, `df`, `ps`)
- ✅ Text processing and data extraction
- ✅ Terminal output formatting
- ✅ Performance monitoring concepts

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Ideas for Contributions:
- 🎨 Enhanced output formatting
- 📈 Additional performance metrics
- ⚙️ Configuration options
- 📚 Better documentation
- 🧪 Test cases

---

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

<div align="center">

**Made with ❤️ by [akashdotdev-hub](https://github.com/akashdotdev-hub)**

## 🔗 Project URL

[Project Repository](https://github.com/akashdotdev-hub/server-performance-stats)

⭐ If you find this useful, please consider giving it a star!

</div>


