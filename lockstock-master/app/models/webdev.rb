class Webdev < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def webdev_params
      params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
   end


end
