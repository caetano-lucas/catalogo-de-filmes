class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.string :country
      t.integer :time
      t.string :director
      t.string :gender

      t.timestamps
    end
  end
end
