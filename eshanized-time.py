import psutil
import subprocess
import time

threshold_percentage = 30
excluded_processes = ['devenv.exe', 'HopToDesk.exe', 'msedge.exe']  # List of process names to exclude

while True:
    for process in psutil.process_iter(['pid', 'name', 'cpu_percent']):
        process_name = process.info['name']
        if process_name != 'Idle' and process_name != 'System Idle Process':
            cpu_percent = process.info['cpu_percent']
            if cpu_percent > threshold_percentage and process_name not in excluded_processes:
                print(f"High CPU Usage detected in process: {process_name} ({cpu_percent}%) 🥵")
                try:
                    subprocess.run(['taskkill', '/F', '/IM', process_name], check=True)
                    print(f"Terminated process: {process_name} 😐")
                    
                except subprocess.CalledProcessError:
                    print(f"Failed to terminate process: {process_name} 😑")
    time.sleep(10)  # Adjust the sleep duration as needed