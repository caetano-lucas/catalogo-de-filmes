class AddGenderToMovie < ActiveRecord::Migration[7.2]
  def change
    add_reference :movies, :gender, null: false, foreign_key: true, default: 0
  end
end
