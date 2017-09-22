class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :users, :string
      t.column :photos, :string
      t.column :date_time,       :date_time
      t.column :comment_text,        :text
    end
  end
end
