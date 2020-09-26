class Form < ApplicationRecord
    belongs_to :user

    validates :form, presence: true

end
