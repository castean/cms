class Payment < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :client
end
