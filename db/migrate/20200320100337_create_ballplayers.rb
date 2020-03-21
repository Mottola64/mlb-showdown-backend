class CreateBallplayers < ActiveRecord::Migration[6.0]
  def change
    create_table :ballplayers do |t|

      t.timestamps
    end
  end
end
