class Supplier < ActiveRecord::Base
	has_many :services, dependent: :destroy
	accepts_nested_attributes_for :services
	has_many :enquiries

end
