class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :identities
  has_many :layouts
  belongs_to :field
  has_many :favors
  has_many :sections, through: :favors
  has_many :fields, through: :favors
  
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:facebook]


def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    if user.save(:validate => false)

    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name
    user.image = auth.info.image
    # user.name = auth.info.name   # assuming the user model has a name
    # user.image = auth.info.image # assuming the user model has an image
  else
    redirect_to root_path
  end
  end
end

def man?
  self.uid == '1339708379392267'
end

def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
