class AddRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.column :name, :string
      t.column :origin, :string
      t.column :location, :string
      t.timestamps()
    end
  end
end
