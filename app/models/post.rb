class Post < ApplicationRecord

    validates :title, presence:true, length: {minimum: 3, maximum: 25}
    validates :description, presence:true, length: {minimum: 5, maximum: 500}
    validates :keywords, presence:true, length: {minimum: 5, maximum: 100}

    has_many_attached :images

    belongs_to :user

    has_many :comments

    has_many :likes

    class Link < ActiveRecord::Base
        belongs_to :user
        validates :user, presence: true
     end

    # This will creat a randomized id for the posts.
    before_create :randomize_id
    private
    def randomize_id
      begin
        self.id = SecureRandom.random_number(1_000_000_000)
      end while User.where(id: self.id).exists?
    end

end 
