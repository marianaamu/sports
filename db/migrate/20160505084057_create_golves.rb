class CreateGolves < ActiveRecord::Migration
  def change
    create_table :golves do |t|
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
