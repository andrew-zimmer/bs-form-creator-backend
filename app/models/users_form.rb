class UsersForm < ApplicationRecord
    belongs_to :user
    belongs_to :form

    accepts_nested_attributes_for :form, allow_destroy: true
end
