class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :description
      t.string :image_url, null: false
      t.references :category, index: true

      t.timestamps
    end
  end
end
