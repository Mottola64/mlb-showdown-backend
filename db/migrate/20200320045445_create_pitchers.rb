class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|

      t.timestamps
    end
  end
end
