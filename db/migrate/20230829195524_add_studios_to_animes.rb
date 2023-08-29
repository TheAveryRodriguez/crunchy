class AddStudiosToAnimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :animes, :studio, null: false, foreign_key: true
  end
end
