class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :protein
      t.float :fat
      t.float :carbohydrate
      t.float :calorie
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :routine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
