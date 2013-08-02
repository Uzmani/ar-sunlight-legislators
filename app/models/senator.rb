require_relative "../../db/config"

class Senator < ActiveRecord::Base
  validates :party, :state, :gender, :firstname, :lastname, presence: true

end
