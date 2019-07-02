require 'aws-sdk'
require 'json'

class VideosController < ApplicationController
  def show
    @video_record = Video.find(params[:id])
    s3_client = Aws::S3::Client.new(
      profile: 'john',
      region: 'us-east-1',
      access_key_id: Rails.application.credentials.aws[:access_key_id],
      secret_access_key: Rails.application.credentials.aws[:secret_access_key]
    )
    @video = s3_client.get_object({
      bucket: 'jvs-video-dev',
      key: 'Waterfall - 6998.mp4',
    })
  end

end
