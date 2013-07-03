class User < ActiveRecord::Base
   has_one :profile, :dependent => :destroy
   has_many :vendas
   accepts_nested_attributes_for :profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  #:registerable,
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_admin, :status, :profile_attributes
   validates_columns :is_admin, :status
end
