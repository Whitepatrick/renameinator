import imdb
import json

def get_top_five(search_term):
    ia = imdb.IMDb()
    s_result = ia.search_movie(search_term)
    top_five = s_result[0:5]

    for result in top_five:
        print result['long imdb canonical title'], result.movieID
