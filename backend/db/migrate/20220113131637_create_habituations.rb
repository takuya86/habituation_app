class CreateHabituations < ActiveRecord::Migration[6.0]
  def change
    create_table :habituations do |t|
      t.string :min_target
      t.string :max_target
      t.date :period
      t.text :thoughts

      t.timestamps
    end
  end
end
