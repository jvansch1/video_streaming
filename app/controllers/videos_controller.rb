require 'aws-sdk'
require 'json'

class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
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

    @signer = Aws::S3::Presigner.new(
      region: 'us-east-1',
      access_key_id: Rails.application.credentials.aws[:access_key_id],
      secret_access_key: Rails.application.credentials.aws[:secret_access_key]
    )



    # @video = s3_client.get_object({
    #   bucket: 'jvs-video-dev',
    #   key: 'stock.jpg',
    # })
    # @video_blob = @video.body.read
    # @file = File.open(@video_blob)
    # @json = JSON.parse(@video_blob)
    # @video_blob = @video.body.read
  end

end
