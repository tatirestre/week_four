class AddPhotosToPizzas < ActiveRecord::Migration
  def change
  	add_column :pizzas, :photo, :string
  end
end
