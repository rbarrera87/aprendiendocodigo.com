class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name, null: false
      t.string :description
      t.string :slug, null: false
      t.string :url, null: false
      t.references :course, index: true

      t.timestamps
    end
  end
end
