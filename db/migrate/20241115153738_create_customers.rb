class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.date :birth_date

      t.timestamps
    end
  end
end
