class Comic < ActiveRecord::Base
    has_many :user_comics
    has_many :users, through: :user_comics

    validates_presence_of :name, :description, :publisher
end