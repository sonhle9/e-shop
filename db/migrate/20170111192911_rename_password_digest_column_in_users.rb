class RenamePasswordDigestColumnInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :password_digets, :password_digest
  end
end
