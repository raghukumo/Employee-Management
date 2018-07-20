class Role < ApplicationRecord
  has_many :users

  scope :admin, -> { where(code: 'admin').take.id }
  scope :user,  ->{ where(code: 'user').take.id }
  scope :line_manager,  ->{ where(code: 'line_manager').take.id }

end
