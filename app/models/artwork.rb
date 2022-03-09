class Artwork < ActiveRecord
    validates :artist_id, :title, presence:true, uniqueness: true
    validates :image_url, presence: true

    belongs_to :artist 
        primary_key: :id 
        foreign_key: :artist_id
        class_name: :User
end