class User < ActiveRecord::Base
	has_many :usermeetups
	has_many :meetups, through: :usermeetups
end
