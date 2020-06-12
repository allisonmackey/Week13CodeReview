class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :open, :boolean
      t.column :website, :string
      t.column :phone_number, :string
      t.column :features, :string
    end
  end
end
