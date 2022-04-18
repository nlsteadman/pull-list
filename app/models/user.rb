class User < ActiveRecord::Base
    has_many :user_comics
    has_many :comics, through: :user_comics

    validates :name, presence: true, uniqueness: true
    
end