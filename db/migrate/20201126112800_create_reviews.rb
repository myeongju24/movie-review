class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title,     null: false
      t.integer    :points_id, null: false
      t.string     :summary,   null: false
      t.text       :contents,  null: false
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
