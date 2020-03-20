class BatterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :year_id, :set_id, :card_number, :team, :onbase, :strikeout, :groundball, :flyball, :base_on_balls, :single, :single_plus, :double, :triple, :homerun, :points, :speed, :hand, :starting_position, :fielding_one, :starting_position_two, :fielding_two, :starting_position_three, :fielding_three, :starting_position_four, :fielding_four, :total_outs, :extra_base_hits, :number_of_positions
end
