class ChangeUrlColumn < ActiveRecord::Migration
  def change
    rename_column :links, :url, :url_path
  end
end
