class CreateBatters < ActiveRecord::Migration[6.0]
  def change
    create_table :batters do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.integer :year_id
      t.string :set_id
      t.integer :card_number
      t.string :team
      t.integer :onbase
      t.integer :strikeout
      t.integer :groundball
      t.integer :flyball
      t.integer :base_on_balls
      t.integer :single
      t.integer :single_plus
      t.integer :double
      t.integer :triple
      t.integer :homerun
      t.integer :points
      t.integer :speed
      t.string :hand
      t.string :starting_position
      t.integer :fielding_one
      t.string :starting_position_two
      t.integer :fielding_two
      t.string :starting_position_three
      t.integer :fielding_three
      t.string :starting_position_four
      t.integer :fielding_four
      t.integer :total_outs
      t.integer :extra_base_hits
      t.integer :number_of_positions
      t.string :timestamps
    end
  end
end
