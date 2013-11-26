class ChangeServiceIdInEnquiries < ActiveRecord::Migration
  def change
  	rename_column :enquiries, :service_id, :supplier_id
  end
end
