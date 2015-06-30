class Expense < ActiveRecord::Base
<<<<<<< HEAD

  belongs_to :client
  belongs_to :vendor
=======
  belongs_to :vendor
  belongs_to :client
>>>>>>> 4b7fd0003bef3b95ea8f355aa93fcbdc8be713f6

  has_attached_file :receipt, :styles => { :medium => "300x300#>",
                                          :thumb => "100x100#" },
                                          :default_url => ":style/missing.png"
  validates_attachment_content_type :receipt, :content_type => /\Aimage\/.*\Z/


end
