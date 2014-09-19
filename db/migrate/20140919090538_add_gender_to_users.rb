class AddGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :contact_number, :integer
    add_column :users, :address, :text
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :image, :string
  end
end
