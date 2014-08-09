class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :cell_phone

      t.timestamps
    end
  end
end
