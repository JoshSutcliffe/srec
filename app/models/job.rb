class Job < ActiveRecord::Base
  belongs_to :clients
  has_many :applications
end
