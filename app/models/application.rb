class Application < ActiveRecord::Base
  belongs_to :candidates
  belongs_to :jobs
end
