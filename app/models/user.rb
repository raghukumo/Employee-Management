class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :assets
  has_one :leave_summery
  has_one :user_profile
  has_many :leaves
  belongs_to :role
  belongs_to :manager, class_name: 'User', optional: true
  has_many :members, class_name: 'User', foreign_key: 'manager_id'
end
