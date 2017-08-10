class User < ApplicationRecord

  has_many :posts

  def display_name
    # # 取 email 的前半来显示， 如果你也可以另开一个字段是 你草name 让用户可以自己编辑显示名称
    self.email.split("@").first

  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
