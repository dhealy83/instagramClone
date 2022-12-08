class Post < ApplicationRecord

    validates :title, presence:true, length: {minimum: 3, maximum: 25}
    validates :description, presence:true, length: {minimum: 5, maximum: 500}
    validates :keywords, presence:true, length: {minimum: 5, maximum: 100}

end
