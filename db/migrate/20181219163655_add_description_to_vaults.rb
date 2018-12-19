class AddDescriptionToVaults < ActiveRecord::Migration[5.2]
  def change
    add_column :vaults, :description, :string
  end
end
