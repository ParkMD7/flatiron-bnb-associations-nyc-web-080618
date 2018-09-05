class User < ActiveRecord::Base
  # As a Host
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings
  # As a Guest
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :trips, class_name: 'Reservation', :foreign_key => 'guest_id'
end
