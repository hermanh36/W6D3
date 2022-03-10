class ArtworkShare < ApplicationRecord

    validates :artwork_id, uniqueness: {scope: :viewer_id}
    #unique artwork_id to viewer_id, Ex: WRONG: 1-> 2  1->3 1-> 2, RIGHT: 1-> 2 1->3 2-> 3


    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User

    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork
end