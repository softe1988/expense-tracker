class Expense < ActiveRecord::Base
  belongs_to :vendors
  belongs_to :clients

  has_attached_file :receipt, :styles => { :medium => "300x300#>",
                                          :thumb => "100x100#" },
                                          :default_url => ":style/missing.png"
  validates_attachment_content_type :receipt, :content_type => /\Aimage\/.*\Z/

end
