class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.string :name
    	t.string :email
    	t.date :fromdate
    	t.date :todate
    	
      t.timestamps
    end
  end
end
