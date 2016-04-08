import sys
import lib.get_info as gi
import lib.parse_file as pf

def begin(args):
    search_results = gi.search_for_title(str(args[1]))
    print "\nWhich title matches best?\n"
    gi.select_title(search_results)
    print "\n"
    print "Please enter ID:"
    movie_id = raw_input()
    return movie_id

if len(sys.argv) < 3:
    print "\nYou're missing somthing..\n\nPlease use like this:\n$ python renamer.py 'search title' /file/path\n\n"
else:
    begin(sys.argv)
    pf.parse_files(sys.argv[2])
