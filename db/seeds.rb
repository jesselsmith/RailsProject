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
  ],
  categories_keys: ['name'],
  categories: [
    ['Strategy'],
    ['Party'],
    ['Trivia'],
    ['Puzzle'],
    ['Deception'],
    ['Deck Building'],
    ['Card'],
    ['Dice'],
    ['Miniatures'],
    ['Political'],
    ['Horror'],
    ['Fantasy'],
    ['Historical'],
    ['Sci-Fi'],
    ['Mature/Adult'],
    ['Cooperative'],
    ['Competitive'],
    ['Sports'],
    ['Electronic'],
    ['Deduction'],
    ['Role Playing']
  ],
  artists_keys: ['name'],
  artists: [
    ['Volkan Baga'],
    ['Tanja Donner'],
    ['Pete Fenlon'],
    ['Jason Hawkins'],
    ['Michaela Kienle'],
    ['Harald Lieske'],
    ['Michael Menzel'],
    ['Marion Pott'],
    ['Matt Schwabel'],
    ['Franz Vohwinkel'],
    ['Stephen Graham Walsh'],
    ['Doris Matthäus'],
    ['Anne Pätzke'],
    ['Chris Quilliams'],
    ['Klaus-Jürgen Wrede'],
    ['Josh Cappel'],
    ['Christian Hanisch'],
    ['Régis Moulun'],
    ['Chris Quilliams'],
    ['Tom Thiel'],
    ['Antoine Bauza'],
    ['Miguel Coimbra'],
    ['Matthias Catrein'],
    ['Julien Delval'],
    ['Tomasz Jedruszek'],
    ['Ryan Laukat'],
    ['Marcel-André Casasola Merkle'],
    ['Claus Stephan'],
    ['Christof Tisch'],
    ['Cyrille Daujean'],
    ['Julien Delval'],
    ['Klemens Franz'], 
    ['Stéphane Gantiez'],
    ['Tomáš Kučerovský'],
    ['Filip Murmak']
  ],
  designers_keys: ['name'],
  designers: [
    ['Klaus Teuber'],
    ['Klaus-Jürgen Wrede'],
    ['Matt Leacock'],
    ['Antoine Bauza'],
    ['Donald X. Vaccarino'],
    ['Alan R. Moon'],
    ['Uwe Rosenberg'],
    ['Andreas Seyfarth'],
    ['Vlaada Chvátil'],
    ['Philippe Keyaerts']
  ],
  publishers_keys: ['name'],
  publishers: [
    ['KOSMOS'],
    ['Z-Man Games'],
    ['Rio Grande Games'],
    ['Repos Production'],
    ['Days of Wonder'],
    ['Lookout Games'],
    ['Czech Games Edition']
  ]

}

def add_review_seeds
  5.times do |i|
    10.times do |j|
      DATA[:reviews] << [rand(3..9), '', i + 6, j + 1]
    end
  end
end

def add_artists_to_games
  [
    (1..11).to_a, (12..15).to_a, (16..20).to_a, [21, 22],
    [(23..29).to_a, 6, 7].flatten, [30, 31], 32, [6, 10],
    [33, 34, 35], [22, 30]
  ].each.with_index(1) do |array, i|
    BoardGame.find(i).artists << Artist.find(array)
  end
end

def add_designers_to_games
  10.times do |i|
    BoardGame.find(i + 1).designers << Designer.find(i+36)
  end
end

def add_games_to_publishers
  [1, [2, 5], [3, 8], 4, [6, 10], 7, 9].each.with_index(46) do |array, i|
    Publisher.find(i).board_games << BoardGame.find(array)
  end
end

def add_game_makers_to_games
  add_artists_to_games
  add_designers_to_games
  add_games_to_publishers
end

def maker(class_object)
  symbol = class_object.to_s.pluralize.underscore.to_sym
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
  maker(BoardGame)
  maker(User)
  maker(Review)
  maker(Category)
  maker(Artist)
  maker(Designer)
  maker(Publisher)
  add_game_makers_to_games
end

make_all_seeds
