
---

## ✅ **`README.md`**

---

## Borderless Tech Academy

### Bash Scripting Exercises (Beginner Level)

This project contains a collection of beginner-level Bash scripting exercises designed to build foundational Linux and DevOps automation skills.
Each script focuses on real-world administrative tasks commonly performed by Linux system administrators.

---

## 📁 Project Structure

```bash
Assignment2/
├── README.md
├── create_users.sh
├── users.txt
├── user_creation.log
├── system_health.sh
├── health.log
├── file_organizer.sh
├── backup_script.sh
├── devops_toolkit.sh
└── test_files/
```

---

## 🧪 Exercises Overview

### 1️⃣ User Account Automation Script

**Objective:**
Automate the creation of Linux user accounts from a text file.

**Features:**

* Reads usernames from `users.txt`
* Creates users using `useradd`
* Generates random passwords
* Forces password change on first login
* Logs activity to `user_creation.log`
* Detects and reports existing users

**Skills Practiced:**

* `while read`
* `if` conditions
* File existence checks
* `id` command
* Exit codes
* Logging

**Usage:**

```bash
sudo ./create_users.sh
```

---

### 2️⃣ System Health Monitor Script

**Objective:**
Monitor basic system health metrics.

**Checks:**

* Disk usage
* Memory usage
* CPU load

**Behavior:**

* Displays the current date and hostname
* Prints warnings when thresholds are exceeded
* Appends output to `health.log`
* Can be scheduled using `cron`

**Skills Practiced:**

* Command substitution `$( )`
* `df`, `free`, `uptime`
* `awk`
* Arithmetic comparisons
* Variables

**Usage:**

```bash
./system_health.sh
```

---

### 3️⃣ File Organizer Script

**Objective:**
Organize files in a specified directory by file type.

**Functionality:**

* Prompts the user for a directory path
* Moves files into folders:

  * `.jpg` → `images/`
  * `.txt` → `documents/`
  * `.log` → `logs/`
* Creates destination folders if they do not exist
* Displays a summary report

**Skills Practiced:**

* `for` loops
* Pattern matching (`*.jpg`)
* `mkdir -p`
* `mv`
* Conditional checks

**Usage:**

```bash
./file_organizer.sh
```

---

### 4️⃣ Backup with Timestamp Script

**Objective:**
Create compressed backups using timestamp-based naming.

**Features:**

* Prompts the user for a directory to back up
* Creates backups using the format:

```bash
backup_YYYYMMDD_HHMMSS.tar.gz
```

* Copies files recursively
* Compresses backups using `tar -czf`
* Deletes backups older than 7 days
* Stores backups in a dedicated backup directory

**Skills Practiced:**

* `date` formatting
* Command substitution
* Recursive copying
* Input validation
* Cleanup automation

**Usage:**

```bash
./backup_script.sh
```

---

### 5️⃣ Menu-Based DevOps Toolkit Script

**Objective:**
Provide a menu-driven interface for common system checks.

**Menu Options:**

1. Check Disk Usage
2. Check Running Processes
3. Check Logged-in Users
4. Exit

**Implementation:**

* Uses `case` statements for menu selection
* Runs in a loop until the user exits
* Handles invalid input gracefully

**Skills Practiced:**

* `case` statements
* Loops
* User input handling
* Control flow

**Usage:**

```bash
./devops_toolkit.sh
```

---

## ⚙️ Requirements

* Linux system
* Bash shell
* Root privileges (for the user creation script)
* Standard Linux utilities:

  * `df`, `free`, `tar`, `find`, `ps`, `who`

---

## 🎯 Learning Outcomes

By completing this project, I was able to:

* Understand Bash scripting fundamentals
* Automate common system administration tasks
* Apply input validation and error handling
* Build reusable shell scripts
* Gain confidence with real-world Linux commands

---

## 📌 Author

Eunice Abieyuwa Igbinedion

---

## 📄 License

This project is intended for educational purposes only.

---

## ✅ How to Use This Project

1. Create the README file:

```bash
nano README.md
```

2. Paste the content above
3. Save and exit
4. Verify:

```bash
cat README.md
```

---

