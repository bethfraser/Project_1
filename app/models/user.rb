class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  mount_uploader :user_image, UserImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :timeslots, through: :bookings

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  validates :login_code, inclusion: { in: %w(LOGINCODE1 LOGINCODE5 LOGINCODE6),
    message: "%{value} is not a valid ticket holder code" }, on: :create



end
