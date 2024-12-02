class HtmxpostsController < ApplicationController
  before_action :set_htmxpost, only: %i[ show edit update destroy ]

  # GET /htmxposts or /htmxposts.json
  def index
    @htmxposts = Htmxpost.all
  end

  # GET /htmxposts/1 or /htmxposts/1.json
  def show
  end

  # GET /htmxposts/new
  def new
    @htmxpost = Htmxpost.new
  end

# GET /htmxposts/1/edit
# app/controllers/htmxposts_controller.rb
def edit
  @htmxpost = Htmxpost.find(params[:id])
  render partial: "form", locals: { htmxpost: @htmxpost }
end


  # POST /htmxposts or /htmxposts.json
  def create
    @htmxpost = Htmxpost.new(htmxpost_params)
    if @htmxpost.save
      render partial: "htmxposts/htmxpost", locals: { htmxpost: @htmxpost }
    else
      render partial: "errors", locals: { errors: @htmxpost.errors.full_messages }
    end
  end


  # PATCH/PUT /htmxposts/1 or /htmxposts/1.json
  def update
    @htmxpost = Htmxpost.find(params[:id])
    if @htmxpost.update(htmxpost_params)
      render partial: "htmxposts/htmxpost", locals: { htmxpost: @htmxpost }
    else
      render partial: "form", locals: { htmxpost: @htmxpost }
    end
  end


  # DELETE /htmxposts/1 or /htmxposts/1.json
  def destroy
    @htmxpost = Htmxpost.find(params[:id])
    @htmxpost.destroy
    head :ok # Return a 200 status without content to let HTMX remove the DOM element
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_htmxpost
      @htmxpost = Htmxpost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def htmxpost_params
      params.expect(htmxpost: [ :title, :body ])
    end
end
