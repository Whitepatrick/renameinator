import os
import fnmatch, re

def parse_files(path):
    dirs = os.listdir(path)
    for i in dirs:
        print i
# ((S[0-9]*)?(E[0-9]*))|((s[0-9]*)?(e[0-9]*))|([0-9]{1,})
# .(mkv|avi|mpg)
