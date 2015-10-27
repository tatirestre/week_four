class CreateBreads < ActiveRecord::Migration
  def change
    create_table :breads do |t|
      t.string :name
      t.text :description
      t.decimal :thickness_in_inches

      t.timestamps null: false
    end
  end
end
