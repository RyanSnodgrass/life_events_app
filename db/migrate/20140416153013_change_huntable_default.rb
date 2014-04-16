class ChangeHuntableDefault < ActiveRecord::Migration
  def change
  	change_column :deers, :huntable, :boolean, default: true
  end
end
