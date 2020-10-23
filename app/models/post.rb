class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :team

    validates :content, presence: true
end