import imdb
import json

def search_for_title(search_term):
    ia = imdb.IMDb()
    s_result = ia.search_movie(search_term)
    return s_result[0:5]

def select_title(results):
    for result in results:
        print result['long imdb canonical title'], result.movieID
