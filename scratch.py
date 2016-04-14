import sys
import os
import lib.get_info as gi
import lib.parse_file as pf

user = os.environ["USER"]
path = "/home/%s/workspace/renaminator/fake_shows/Martin/season_01" % user
file_blob = os.listdir(path)

for f in file_blob:
    file_info = pf.get_file_info(f)
    print file_info
