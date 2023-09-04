class CreateUsars < ActiveRecord::Migration[7.0]
  def change
    create_table :usars do |t|
      t.string :name
      t.string :nickname
      t.string :email

      t.timestamps
    end
  end
end
