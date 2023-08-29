class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.boolean :streamable
      t.integer :season_count
      t.integer :total_episodes
      t.integer :rank

      t.timestamps
    end
  end
end
