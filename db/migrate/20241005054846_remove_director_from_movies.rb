class RemoveDirectorFromMovies < ActiveRecord::Migration[7.2]
  def change
    remove_column :movies, :director, :string
  end
end
