class CreateEnquiryTable < ActiveRecord::Migration
  def change
    create_table :enquiry_tables do |t|
    	t.string :name
    	t.string :email
    	t.string :message

    	t.timestamps
    end
  end
end
