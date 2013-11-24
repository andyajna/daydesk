class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :enquiry_tables, :enquiries
  end
end
