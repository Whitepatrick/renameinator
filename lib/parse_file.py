import os

def parse_files(path):
    dirs = os.listdir(path)
    for i in dirs:
        print i
