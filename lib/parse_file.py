import os
import re

path = "/home/pwhite/workspace/renameinator/fake_shows/Martin/season_01"
file_blob = os.listdir(path)
season_and_ep = re.compile("(([0-9]{4,})|([0-9]{2,}))|(mkv|MKV|avi|AVI|mpeg|MPEG|mpg|MPG|mp4|MP4)")

def get_file_names(file_name):
    ep_info = map(tuple, re.findall(season_and_ep, str(file_name)))
    return ep_info

for f in get_file_names(file_blob):
    f = filter(None, f)
    print f



#season_episode = re.compile("((S[0-9]{2,})|(E[0-9]{2,}))|(S[0-9]{2,})|(E[0-9]{2,})|((.[0-9]{2,})|(.[0-9]{2,}))|(.[0-9]{2,})|([0-9]{4,})|([0-9]{2,})")
