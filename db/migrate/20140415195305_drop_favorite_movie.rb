class DropFavoriteMovie < ActiveRecord::Migration
  def change
  	drop_table :favorite_movie

 		create_table :favorite_movies do |t|
 			t.string :title
  		t.string :description
  		t.timestamps # => created_at updated_at
  	end
  end
end
