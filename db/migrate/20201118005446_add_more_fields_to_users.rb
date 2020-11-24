class AddMoreFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :link, :string
    add_column :users, :introduction, :text
    add_column :users, :languages, :string
    add_column :users, :current_affiliation, :string
    add_column :users, :interests, :string
  end
end
