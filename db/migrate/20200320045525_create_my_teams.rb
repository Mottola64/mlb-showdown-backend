class CreateMyTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :my_teams do |t|

      t.timestamps
    end
  end
end
