class CreateSurves < ActiveRecord::Migration
  def change
    create_table :surves do |t|
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
