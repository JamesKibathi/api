class StreamsController < ApplicationController
  before_action :set_stream, only: %i[ show update destroy ]

  # GET /streams - all students
  def index
    @streams = Stream.all

    render json: @streams
  end

  # GET /streams/1
  def show
    render json: @stream
    # Serializer : StudentStreamSerializer
  end

  # POST /streams
  def create
    @stream = Stream.new(stream_params)

    if @stream.save
      render json: @stream, status: :created, location: @stream
    else
      render json: @stream.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /streams/1
  def update
    if @stream.update(stream_params)
      render json: @stream
    else
      render json: @stream.errors, status: :unprocessable_entity
    end
  end

  # DELETE /streams/1
  def destroy
    @stream.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream
      @stream = Stream.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stream_params
      params.require(:stream).permit(:name)
    end
end
