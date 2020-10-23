class User < ActiveRecord::Base
    has_many :posts
    has_many :teams, through: :posts
    validates :username, :email, :password, presence: true

    def slug
        self.username.downcase.gsub(" ", "-")
    end

    def self.find_by_slug(slug)
        self.all.find do |i|
            i.slug
        end
    end
    
end