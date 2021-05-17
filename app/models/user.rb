class User < ApplicationRecord

  ThinkingSphinx::Callbacks.append(
        self, :behaviours => [:real_time]
    )
    
  validates :first_name, :last_name, :email, :phone, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = ["User", "Admin", "Agency"]
  
  has_many :user_docs, dependent: :delete_all
  
  has_one :profile, dependent: :destroy
  has_many :work_experiences, dependent: :delete_all
  has_many :qualifications, dependent: :delete_all

  before_create :init

  def full_name
    first_name + " " + last_name
  end
  
  def init
    self.role = "User"
    self.deactivated = false
  end

  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end
  
  
  def active_for_authentication?
    super && !deactivated
  end

  def active_status
    self.deactivated ? "No" : "Yes"
  end


end
