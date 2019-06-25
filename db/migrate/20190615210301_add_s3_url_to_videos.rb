class AddS3UrlToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column(:videos, :s3_url, :string)
  end
end
