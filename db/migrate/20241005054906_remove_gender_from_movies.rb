class RemoveGenderFromMovies < ActiveRecord::Migration[7.2]
  def change
    remove_column :movies, :gender, :string
  end
end
