import sys
import lib.get_info as gi
import lib.parse_file as pf

def begin(args):
    gi.get_top_five(str(args[1]))
    pf.parse_files(str(args[2]))

if len(sys.argv) < 3:
    print "\nYou're missing somthing..\n\nPlease use like this:\n$ python renamer.py 'search title' /file/path\n\n"
else:
    begin(sys.argv)
