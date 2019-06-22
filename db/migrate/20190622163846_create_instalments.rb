class CreateInstalments < ActiveRecord::Migration[5.2]
  def change
    create_table :instalments do |t|
      t.string :title
      t.float :amount
      t.date :deadline
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
