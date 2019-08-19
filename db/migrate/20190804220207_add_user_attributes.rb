class AddUserAttributes < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
    t.string :full_name
    t.string :email, null: false, default: ""
    end
  end
end
