class CreateSchoolTable < ActiveRecord::Migration
  def change
  	create_table :school_tables do |t|
  	  t.string :name
  	  t.string :state
  	  t.string :major
  		t.datetime :graduation
  	end
  end
end