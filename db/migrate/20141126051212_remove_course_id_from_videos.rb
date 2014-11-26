class RemoveCourseIdFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :course_id
    add_column :videos, :level_id, :integer
    add_index :videos, :level_id
  end
  def down
    add_column :videos, :course_id, :integer
    remove_column :videos, :level_id
    add_index :videos, :course_id
  end
end
