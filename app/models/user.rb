class User < ApplicationRecord
  
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets, dependent: :destroy
  has_many :images, dependent: :destroy
  
  def full_profile?
    store_name?
  end
  
end
