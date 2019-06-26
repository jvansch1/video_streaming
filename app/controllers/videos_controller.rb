require 'aws-sdk'
require 'json'

class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video_record = Video.find(params[:id])
    # s3_client = Aws::S3::Client.new(
    #   profile: 'john',
    #   region: 'us-east-1',
    #   access_key_id: 'AKIA4OQZ2XG46I7I6B23',
    #   secret_access_key: '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'
    # )
    @video_url = @video_record.s3_url
    # @video = s3_client.get_object({
    #   bucket: 'jvs-video-dev',
    #   key: 'Waterfall - 6998.mp4',
    # })
  end

end
