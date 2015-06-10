class AddSlugToCourses < ActiveRecord::Migration
  def up
    add_column :courses, :slug, :string
    update_courses
  end
  def down
    remove_column :courses, :slug
  end

  private
  def update_courses
    Course.all.each do |c|
      c.update_attributes!(slug: c.name.parameterize)
    end
  end
end
