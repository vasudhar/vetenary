class Pet < ActiveRecord::Base
 has_many :appointments
 has_many :doctors, :through => :appointments
 belongs_to :customer
 belongs_to :pdoctor
end
