class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar #, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :email, presence: true, email: true, uniqueness: true
	validates :phone ,phone: true, uniqueness: true
  validates :name, presence: true
end
