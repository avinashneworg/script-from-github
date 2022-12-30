# Importing the library
import psutil

# Calling psutil.cpu_precent() for 1 seconds
print('The CPU usage is: ', psutil.cpu_percent(1))


# Importing the library
import psutil

# Getting % usage of virtual_memory ( 3rd field)
print('RAM memory % used:', psutil.virtual_memory()[2])
# Getting usage of virtual_memory in GB ( 4th field)
print('RAM Used (GB):', psutil.virtual_memory()[3]/1000000000)


# Python program to explain shutil.disk_usage() method
# importing shutil module
import shutil


# Get the disk usage statistics
# about the given path
total, used, free = shutil.disk_usage(__file__)
print('Total Disk space:', total)
print('Used Disk space:', used)
print('Free Disk space:', free)
