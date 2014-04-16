class CreateDeer < ActiveRecord::Migration
  def change
  	create_table :deer do |t|
  		t.string :name
  		t.integer :age
  		t.boolean :tasty, default: false
  		t.datetime :birthday
  		t.string :color, default: "brown"
  	end
  end
end
