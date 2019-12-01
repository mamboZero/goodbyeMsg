class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.text :main_image
      t.text :thumb_image
      t.text :bg_video

      t.timestamps
    end
  end
end
