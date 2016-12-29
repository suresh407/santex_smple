class HomePhoto < ApplicationRecord
belongs_to :home
  scope :single, -> { where(:home_type => "Single wide") }
  scope :double, -> { where(:home_type => "Dingle wide") }
  scope :triple, -> { where(:home_type => "Triple wide") }
  scope :others, -> { where(:home_type => "Others") }
  scope :hotdeals, -> { where(:home_type => "Hot deals") }
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
