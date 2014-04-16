class FixDeerTable < ActiveRecord::Migration
  def change
  	drop_table :deer

  	create_table :deers do |t|
  	  t.string :name
  		t.integer :age
  		t.boolean :tasty, default: false
  		t.datetime :birthday
  		t.string :color, default: "brown"
  	end
  end
end
