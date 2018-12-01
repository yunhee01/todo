class CreateTotoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :toto_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
