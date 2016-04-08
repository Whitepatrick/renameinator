import os
import re

extension = re.compile(".*$(.mkv|.avi|.mpg)")
season_episode = re.compile("((S[0-9]*)?(E[0-9]*))|((s[0-9]*)?(e[0-9]*))|([0-9]{1,})")

def get_file_names(path):
    file_names = map(str, os.listdir(path))
    return file_names

for f in get_file_names('../Martin/season_01'):
    found = re.search(season_episode, f)
    print found.keys
