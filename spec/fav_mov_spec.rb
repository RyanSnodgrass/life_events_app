require 'rspec'
require './app.rb'

describe Favorites do
	it 'should be a hash' do
		Favorites.favs.should be_kind_of(Hash)
	end
	it 'should have a pre-made list' do
		Favorites.favs.should_not be_empty
	end
	it 'movies should have descriptions' do
		Favorites.favs.values.should_not be_empty
	end
	it 'should add movies' do
		first_count = Favorites.favs.count
		new_movie = {"casablanca" => "Classic 1942 film starring Humphrey Bogart and Ingrid Bergman."}
		Favorites.add_mov(new_movie)
		second_count = Favorites.favs.count
		second_count.should > first_count
	end
	it 'should remove movies' do
	end
			

end