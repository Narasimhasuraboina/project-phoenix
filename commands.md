# Linux & Bash Commands Reference

A collection of Linux commands, Bash scripting concepts, and Git operations learned so far.

---

## 1. Essential Linux Commands

| Command | Description |
| :--- | :--- |
| `grep` | Filter and search for text patterns within files. |
| `dmesg` | Investigate system-level hardware and kernel messages/issues. |
| `diff` | Compare files line by line and find differences between them. |
| `chown` | Change file or directory ownership. |
| `chmod` | Change file mode bits (modify read, write, and execute permissions). |
| `newgrp` | Start a new terminal shell with an active group (e.g., `developers`). Refreshes the terminal's group context. |

---

## 2. Shell Scripting Basics

To write and execute a Bash script:

1. Create a file with a `.sh` extension (e.g., `hello.sh`).
2. Add the shebang line at the very top:
   ```bash
   #!/bin/bash
   # or
   #!/bin/zsh

   echo 'Hello, world'
   ```
3. Grant execute permission to run it directly:
   ```bash
   chmod +x hello.sh
   ./hello.sh
   ```

### Key Points to Remember
- Bash scripts start with a shebang line (`#!/bin/bash`).
- Variables in Bash are assigned without spaces around the `=` sign (e.g., `name="John"`).
- The `echo` command is used to print output to the terminal.
- Scripts must be made executable with `chmod +x <filename>` before running them directly.

---

## 3. Arithmetic Operations

Arithmetic operations in Bash are evaluated inside `$(( ... ))`.

### Syntax
```bash
$((expression))
```

### Example
```bash
#!/bin/bash

apple_cost=10
orange_cost=15

total=$((apple_cost + orange_cost))
echo "Total cost: $total"
```

---

## 4. Conditional Statements

Use `if` statements to test conditions.

### Syntax
```bash
if [ "$a" -eq 0 ]; then
    echo "a is 0"
fi
```

> [!NOTE]
> Integer comparisons use flags like `-eq` (equal), `-ne` (not equal), `-lt` (less than), `-le` (less than or equal), `-gt` (greater than), `-ge` (greater than or equal).

---

## 5. Loops & Special Variables

### For Loop Syntax
```bash
for var in "$@"; do
    echo "$var"
done
```

### Special Variables
- `"$@"`: Represents all positional arguments passed to the script or command.
- `"$#"`: Represents the total count of arguments passed.

---

## 6. Arrays in Bash

### Syntax & Usage
```bash
#!/bin/bash

# Create an empty array
Numbers=()

# Append items to the array
Numbers+=(10)
Numbers+=(20)

# Access all elements in the array
echo "The numbers are ${Numbers[@]}"
```

---

## 7. Basic Git Operations

### Initializing and Committing
```bash
# Initialize a local git repository
git init

# Stage all changes
git add .

# Commit changes with a descriptive message
git commit -m "commit message"
```

### Pushing to GitHub
```bash
# General syntax
git push <remote> <branch-name>

# Push to origin main and set upstream tracking (-u flag)
git push -u origin main
```

> The `-u` (or `--set-upstream`) flag links the local branch to the specified remote branch so future `git push` and `git pull` commands don't require specifying the remote and branch names every time.
