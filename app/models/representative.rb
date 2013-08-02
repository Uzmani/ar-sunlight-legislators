require_relative "../../db/config"

class Representative < ActiveRecord::Base
  validates :party, :state, :gender, :firstname, :lastname, presence: true
  


end

