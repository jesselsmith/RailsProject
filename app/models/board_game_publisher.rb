class BoardGamePublisher < ApplicationRecord
  belongs_to :publisher
  belongs_to :board_game
end
