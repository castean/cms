class Calendar < ActiveRecord::Base
  has_many :payments
  belongs_to :status
end
