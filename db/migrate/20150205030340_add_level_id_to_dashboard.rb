class AddLevelIdToDashboard < ActiveRecord::Migration
  def change
    add_reference :dashboards, :level, index: true
  end
end
