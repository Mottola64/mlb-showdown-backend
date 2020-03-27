class Deck < ApplicationRecord
    has_and_belongs_to_many :batters
    has_and_belongs_to_many :pitchers
end
