class AddColumnToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :service_id, :integer
    add_index :enquiries, :service_id
  end
end
