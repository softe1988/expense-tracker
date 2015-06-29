class Expense < ActiveRecord::Base
  belongs_to :client
  belongs_to :vendor
end
