class CreateLifeTable < ActiveRecord::Migration
  def change
  	create_table :life_tables do |t|
  	  t.string :title
  	  t.string :description
  		t.datetime :date
  	end
  end
end