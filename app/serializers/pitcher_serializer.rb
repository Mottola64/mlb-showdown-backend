class PitcherSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :year_id, :set_id, :card_number, :team, :control, :put_out, :strikeout, :groundball, :flyball, :base_on_balls, :single, :double, :homerun, :points, :innings_pitched, :hand, :position
end
