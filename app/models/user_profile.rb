class UserProfile < ApplicationRecord
  belongs_to :user
  validates :mobile_number,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
end
