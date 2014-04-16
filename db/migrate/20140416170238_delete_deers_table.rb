class DeleteDeersTable < ActiveRecord::Migration
  def change
  	drop_table :deers
  end
end
