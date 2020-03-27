class CreateJoinTableDeckPitcher < ActiveRecord::Migration[6.0]
  def change
    create_join_table :decks, :pitchers do |t|
      t.index [:deck_id, :pitcher_id]
      t.index [:pitcher_id, :deck_id]
    end
  end
end
