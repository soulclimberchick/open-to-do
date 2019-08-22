class AddUserIdToLists < ActiveRecord::Migration[5.2]
  def change
    change_table :lists do |t|
      t.boolean :private
      t.references :user, index: true, foreign_key: true
    end
  end
end
