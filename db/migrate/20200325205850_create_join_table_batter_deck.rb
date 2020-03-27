class CreateJoinTableBatterDeck < ActiveRecord::Migration[6.0]
  def change
    create_join_table :batters, :decks do |t|
      t.index [:batter_id, :deck_id]
      t.index [:deck_id, :batter_id]
    end
  end
end
