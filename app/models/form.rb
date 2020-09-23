class Form < ApplicationRecord
    has_many :users_forms
    has_many :users, through: :users_forms

    validates :form, presence: true

    accepts_nested_attributes_for :users_forms, allow_destroy: true
end
