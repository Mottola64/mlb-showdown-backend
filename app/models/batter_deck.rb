class BatterDeck < ApplicationRecord
    belongs_to :batter
    belongs_to :deck
end
