class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         
  validates_format_of    :email, :with  => Devise.email_regexp
  validates_uniqueness_of :email, allow_blank: false
end
