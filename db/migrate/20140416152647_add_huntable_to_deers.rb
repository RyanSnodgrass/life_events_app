class AddHuntableToDeers < ActiveRecord::Migration
  def change
  	add_column :deers, :huntable, :boolean, default: false
  end
end
