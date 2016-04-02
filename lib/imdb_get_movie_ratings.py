import imdb
import json

movie_ids = ('0079945', '0084726', '0088170', '0092007',
             '0098382', '0102975', '0111280', '0117731',
             '0120844', '0253754', '0796366', '1408101',
             '1408101', )

ia = imdb.IMDb()

for movie in movie_ids:
movie = ia.get_movie()
ia.update(movie, 'ratings')
movie_rating = movie['ratings']
print movie_rating

def get_ratings(season_i):
    ratings = {}
    for key, value in season_i.iteritems():
        ia.update(value)
        ratings[key] = value.get('rating')

    return ratings

#show_ratings = {}
#for i in range(1, len(show_seasons) + 1):
#    season_key = "season_" + str(i)
#    show_ratings[season_key] = get_ratings(show_seasons[i])

#print show_ratings
#with open('st_ent.json', 'w') as fp:
#    json.dump(show_ratings, fp)
