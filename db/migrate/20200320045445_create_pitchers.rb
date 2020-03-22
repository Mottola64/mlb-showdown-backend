class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.integer :year_id
      t.string :set_id
      t.integer :card_number
      t.string :team
      t.integer :control
      t.integer :put_out
      t.integer :strikeout
      t.integer :groundball
      t.integer :flyball
      t.integer :base_on_balls
      t.integer :single
      t.integer :double
      t.integer :triple
      t.integer :homerun
      t.integer :points
      t.integer :innings_pitched
      t.string :hand
      t.string :position
      t.string :timestamps
    end
  end
end
