class Home < ApplicationRecord
 TYPES = ['Single wide', 'Double wide', 'Tiple wide', 'Other', 'hot deals']
has_many :home_photos
has_many :home_info_enqueries
  scope :single_wide, -> { where(:home_type => "Single wide") }
  scope :double, -> { where(:home_type => "Double wide") }
  scope :triple, -> { where(:home_type => "Triple wide") }
  scope :others, -> { where(:home_type => "Others") }
  scope :hotdeals, -> { where(:home_type => "Hot deals") }


end
