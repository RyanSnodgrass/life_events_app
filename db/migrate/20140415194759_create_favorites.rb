class CreateFavorites < ActiveRecord::Migration
 def change
  	create_table :favorite_movie do |t|
  		t.string :title
  		t.string :description
  		t.timestamps # => created_at updated_at
  	end
  end
end