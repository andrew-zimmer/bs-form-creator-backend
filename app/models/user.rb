class User < ApplicationRecord

  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users_forms
  has_many :forms, through: :users_forms

  validates :username, presence: true
  validates :email, uniqueness: true


end
