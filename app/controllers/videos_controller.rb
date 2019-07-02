require 'aws-sdk'
require 'json'

class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video_record = Video.find(params[:id])
    s3_client = Aws::S3::Client.new(
      profile: 'john',
      region: 'us-east-1',
      access_key_id: Rails.application.credentials.aws[:access_key_id],
      secret_access_key: Rails.application.credentials.aws[:secret_access_key]
    )
    @video_url = @video_record.s3_url
    @video = s3_client.get_object({
      bucket: 'jvs-video-dev',
      key: 'Waterfall - 6998.mp4',
    })
    # @video_blob = @video.body.read
    @video_blob = @video.body.read.gsub("\u0000", '')
  end

end
