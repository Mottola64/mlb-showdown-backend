class DeckSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name

    has_many :batters
    has_many :pitchers
end
