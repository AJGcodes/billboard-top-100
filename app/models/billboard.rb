class Billboard < ApplicationRecord
    validates :title, :desc, presence: true
end
