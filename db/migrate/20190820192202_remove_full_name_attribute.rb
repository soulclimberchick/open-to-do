class RemoveFullNameAttribute < ActiveRecord::Migration[5.2]
  def change
    def self.up
      remove_column :users, :full_name
    end
  end
end
