class AddYoutubeIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :youtube_id, :string
  end
end
