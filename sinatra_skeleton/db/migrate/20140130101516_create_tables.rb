class CreateTables < ActiveRecord::Migration

  def change

    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :body
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :categories do |t|
      t.belongs_to :posts
      t.belongs_to :tags
      t.integer :post_id
      t.integer :tag_id
      t.timestamps
    end

  end

end
