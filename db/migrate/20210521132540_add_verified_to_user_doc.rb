class AddVerifiedToUserDoc < ActiveRecord::Migration[6.1]
  def change
    add_column :user_docs, :verified, :boolean
  end
end
