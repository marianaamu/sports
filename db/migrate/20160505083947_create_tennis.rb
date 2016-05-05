class CreateTennis < ActiveRecord::Migration
  def change
    create_table :tennis do |t|
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
