class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :user_id, :int 
    # 1st where are we adding the col, then what field, lastly the type
  end
end
