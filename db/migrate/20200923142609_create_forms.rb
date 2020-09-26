class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.json :form
      t.references :user, null: false, foreign_key: true
    end
  end
end
