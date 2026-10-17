# shell_assignment_1

Shell scripting assignment: a system monitoring script with logging and cron automation, run on an AWS EC2 Ubuntu server and tracked with Git.

## Project structure

```
shell_assignment/
├── README.md
└── monitoring/
    ├── monitor.sh
    └── monitor_logs.txt
```

## Day 1: Setup

- Launched an AWS EC2 instance (Ubuntu, region ap-south-1) and connected over SSH
- Installed Git and the AWS CLI
- Created the `shell_assignment` repository with `git init` and pushed it to GitHub
- Wrote the first version of `monitor.sh`

## Day 2: Automation and Logging

### Task 6: Log monitoring output

```bash
./monitor.sh >> monitor_logs.txt
```

`>>` appends each run to `monitor_logs.txt`.

### Task 7: Enhanced monitoring script (v2)

`monitor.sh` prints a formatted report with:

- Date and hostname
- Uptime
- CPU usage
- Memory usage
- Disk usage
- Top 5 processes by memory
- Running services

### Task 8: Schedule with cron

The script runs daily at 9:00 AM using crontab:

```
0 9 * * * /home/ubuntu/shell_assignment/monitoring/monitor.sh >> /home/ubuntu/shell_assignment/monitoring/monitor_logs.txt 2>&1
```

Check the schedule with `crontab -l`.

### Task 9: Version control

All changes were committed and pushed to GitHub:

```bash
git add .
git commit -m "Day 2: enhanced monitoring script, logging, and cron automation"
git push origin main
```

## How to run

```bash
cd monitoring
chmod +x monitor.sh
./monitor.sh
```

## Author

Ashin
