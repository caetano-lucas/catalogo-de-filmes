class CreateDirectors < ActiveRecord::Migration[7.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :country
      t.string :gender

      t.timestamps
    end
  end
end
