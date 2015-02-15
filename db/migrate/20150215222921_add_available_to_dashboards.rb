class AddAvailableToDashboards < ActiveRecord::Migration
  def change
    add_column :dashboards, :available, :boolean, default: true
  end
end
