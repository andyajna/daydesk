class ChangeMessageType < ActiveRecord::Migration
  def change
  	change_column :enquiries, :message, :text
  end
end
