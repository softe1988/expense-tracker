class Expense < ActiveRecord::Base

  has_attached_file :receipt, :styles => { :medium => "300x300>",
                                          :thumb => "100x100>" },
                                          :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :receipt, :content_type => /\Aimage\/.*\Z/

end
