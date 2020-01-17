# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
  board_games_keys: ['title', 'min_players', 'max_players', 'min_playing_time', 'max_playing_time', 'age_range'],
  board_games: [
    ['Catan', 3, 4, 60, 120, '10+'],
    ['Carcassonne', 2, 5, 30, 45, '7+'],
    ['Pandemic', 2, 4, 45, 45, '8+'],
    ['7 Wonders', 2, 7, 30, 30, '10+'],
    ['Dominion', 2, 4, 30, 30, '13+'],
    ['Ticket to Ride', 2, 5, 30, 60, '8+'],
    ['Agricola', 1, 5, 30, 150, '12+'],
    ['Puerto Rico', 3, 5, 90, 150, '12+'],
    ['Codenames', 2, 8, 15, 15, '14+'],
    ['Smallworld', 2, 5, 40, 80, '8+']
  ],
  users_keys: ['email', 'password'],
  users: [
    ['steve@steve.com', 'kingsteve'],
    ['jane@jane.com', 'amazingjane'],
    ['bgcritic@gmail.com', 'gamesstink'],
    ['funny@fun.com', 'mostfun1'],
    ['example@example.com', 'password'],
    ['honey_pot@fbi.gov', 'checkingonyou'],
    ['ilovemeeples@meeples.com', 'littlewoodenjoys'],
    ['bot123@imnotarobot.com', 'beepboop123'],
    ['imustwin@competitive.com', 'losingisdeath'],
    ['bob@bob.com', 'bobisbob'] 
  ],
  reviews_keys: ['rating', 'review_text', 'user_id', 'board_game_id'],
  reviews: [
    [8, 'Catan was my first real board game that wasn\'t Monopoly! Still holds a special place in my heart.', 1, 1],
    [9, 'Pandemic is awesome!', 1, 3],
    [6, 'Takes a little too long to play, tbh.', 1, 8],
    [7, 'Fun, but I\'d usually rather play other games', 1, 9],
    [5, 'Not that into fantasy.', 1, 10],
    [7, 'Decent, classic Euro game.', 2, 2],
    [8, 'Love all the fiddly bits in this one.', 2, 4],
    [7, 'The classic of the deckbuilder genre--other games have gone further with it, but still a great one.', 2, 5],
    [7, 'Planes, trains, and automobiles...or really just trains.', 2, 6],
    [9, 'Such a well thought out game, great fun to play again and again.', 2, 7],
    [3, 'Mainstream trash. Thought it was fun when I didn\'t know better.', 3, 1],
    [4, 'Boring.', 3, 2],
    [3, 'Unbalanced. Some roles are near useless, some make it hard to lose.', 3, 3],
    [4, 'Ridiculous semi-historical take.', 3, 4],
    [3, 'One of the first in the genre, one of the worst', 3, 5],
    [2, 'Really? Color matching and trains? Yawn.', 3, 6],
    [5, 'Passable game about making a farm.', 3, 7],
    [7, 'Not the best game, but actually kind of decent once you get over the whitewashing.', 3, 8],
    [1, 'Waste of time', 3, 9],
    [3, 'Unbalanced tripe.', 3, 10],
    [7, '', 4, 1],
    [6, '', 4, 2],
    [8, '', 4, 3],
    [7, '', 4, 4],
    [5, '', 4, 5],
    [7, '', 4, 6],
    [5, '', 4, 7],
    [5, '', 4, 8],
    [9, '', 4, 9],
    [7, '', 4, 10],
    [7, '', 5, 1],
    [7, '', 5, 3],
    [6, '', 5, 6],
    [7, '', 5, 8],
    [7, '', 5, 9],
    [8, '', 5, 10]
  ]
}

def add_review_seeds
  5.times do |i|
    10.times do |j|
      DATA[:reviews] << [rand(3..9), '', i + 6, j + 1]
    end
  end
end

def maker(symbol, class_object)
  DATA[symbol].each do |object_attributes|
    new_object = class_object.new
    object_attributes.each_with_index do |attribute, i|
      new_object.send(DATA["#{symbol}_keys".to_sym][i] + '=', attribute)
    end
    new_object.save
  end
end

def make_all_seeds
  add_review_seeds
  maker(:board_games, BoardGame)
  maker(:users, User)
  maker(:reviews, Review)
end

make_all_seeds
