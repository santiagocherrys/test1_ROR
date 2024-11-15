class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Added confirmable to get an email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  #Enum for role
  enum role: {admin: 0, writer: 1}

  #Validations
  validates :name, presence: true #chehck that name is not null
  validates :role, inclusion: {in: roles.keys}

  #callback
  before_create :set_default_role

  private

  def set_default_role
    self.role = :writer if self.role.nil?
  end
      
end
