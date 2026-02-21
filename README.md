
---

# 📘 README.md

```markdown
# Borderless Tech Academy  
 
## Bash Scripting Exercises (Beginner Level)

This project contains a collection of **five beginner-level Bash scripting exercises** designed to build foundational Linux and DevOps automation skills.  
Each script focuses on real-world administrative tasks commonly performed by Linux system administrators and DevOps engineers.

---

## 📁 Project Structure

```

Assignment2/
├── create_users.sh
├── users.txt
├── user_creation.log
├── system_health.sh
├── health.log
├── file_organizer.sh
├── backup_script.sh
├── devops_toolkit.sh
└── test_files/

````

---

## 🧪 Exercises Overview

### 1️⃣ User Account Automation Script

**Objective:**  
Automate the creation of Linux user accounts from a text file.

**Features:**
- Reads usernames from `users.txt`
- Creates users using `useradd`
- Generates random passwords
- Forces password change on first login
- Logs activity to `user_creation.log`
- Detects and reports existing users

**Skills Practiced:**
- `while read`
- `if` conditions
- File existence checks
- `id` command
- Exit codes
- Logging

**Usage:**
```bash
sudo ./create_users.sh
````

---

### 2️⃣ System Health Monitor Script

**Objective:**
Monitor basic system health metrics.

**Checks:**

* Disk usage
* Memory usage
* CPU load

**Behavior:**

* Prints warnings if:

  * Disk usage > 80%
  * Memory usage > 75%
* Includes current date and hostname
* Appends output to `health.log`
* Can be scheduled with `cron` (every 5 minutes)

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
Automatically organize files in a directory by file type.

**Functionality:**

* Prompts user for a directory path
* Moves files into folders:

  * `.jpg` → `images/`
  * `.txt` → `documents/`
  * `.log` → `logs/`
* Creates folders if they do not exist
* Counts files moved
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
Create compressed backups with timestamp-based naming and retention policy.

**Features:**

* Prompts user for directory to back up
* Creates backup with format:

  ```
  backup_YYYYMMDD_HHMMSS.tar.gz
  ```
* Copies files recursively
* Compresses backups using `tar -czf`
* Automatically deletes backups older than 7 days
* Stores backups in a dedicated backup directory

**Skills Practiced:**

* `date` formatting
* Command substitution
* `cp -r`
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

```
1. Check Disk Usage
2. Check Running Processes
3. Check Logged-in Users
4. Exit
```

**Implementation:**

* Uses `case` for menu selection
* Runs in a loop until user exits
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
* Root privileges (for user creation script)
* Standard Linux utilities:

  * `df`, `free`, `tar`, `find`, `ps`, `who`

---

## 🎯 Learning Outcomes

By completing this project, i now:

* Understand Bash scripting fundamentals
* Automate common system administration tasks
* Apply input validation and error handling
* Build reusable, modular shell scripts
* Gain confidence with real-world Linux commands

---

## 📌 Author

**Student / Trainee:**
*Eunice Igbinedion*

---

## 📄 License

This project is intended for **educational purposes only**.

````

---

## ✅ How to use it now

1. Create the README file:
```bash
nano README.md
````

2. Paste everything above
3. Save and exit
4. Verify:

```bash
cat README.md
```

---
