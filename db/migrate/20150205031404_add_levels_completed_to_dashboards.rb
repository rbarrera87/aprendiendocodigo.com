class AddLevelsCompletedToDashboards < ActiveRecord::Migration
  def change
    add_column :dashboards, :levels_completed, :integer
  end
end
