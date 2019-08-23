class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :name, :string
      t.column :rating, :string
      t.column :content, :string
      t.column :restaurant_id, :integer
      t.timestamps()
    end
  end
end
