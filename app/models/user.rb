class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :assets
  has_one :leave_summery
  has_one :user_profile
  has_many :leaves
  belongs_to :role
  belongs_to :manager, class_name: 'User', optional: true
  has_many :members, class_name: 'User', foreign_key: 'manager_id'

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
          role_id: 2
        )
      end
    end  
  end
end
