class ChangeUrlColumnBack < ActiveRecord::Migration
  def change
    rename_column :links, :url_path, :url
  end
end
