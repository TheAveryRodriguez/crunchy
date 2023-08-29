class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.boolean :japanese
      t.integer :rank
      t.date :founded_on

      t.timestamps
    end
  end
end
