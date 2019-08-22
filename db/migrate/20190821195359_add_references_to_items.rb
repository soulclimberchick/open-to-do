class AddReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    change_table :items do |t|
      t.references :list, index: true, foreign_key: true
    end
  end
end
