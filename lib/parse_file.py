import os
import re


re_file_ints = re.compile('[0-9]')
re_extension = re.compile('(mkv|avi|mpeg|mpg|mp4)$')

def get_file_info(file_name):
    season = map(int, re.findall(re_file_ints, str(file_name)))
    file_ext = map(str, re.findall(re_extension, str(file_name)))
    return season, file_ext

def split_file_info(file_info):
    if len(file_info) < 3:
        return episode
