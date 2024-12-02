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
  def edit
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
    respond_to do |format|
      if @htmxpost.update(htmxpost_params)
        format.html { redirect_to @htmxpost, notice: "Htmxpost was successfully updated." }
        format.json { render :show, status: :ok, location: @htmxpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @htmxpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /htmxposts/1 or /htmxposts/1.json
  def destroy
    @htmxpost.destroy!

    respond_to do |format|
      format.html { redirect_to htmxposts_path, status: :see_other, notice: "Htmxpost was successfully destroyed." }
      format.json { head :no_content }
    end
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
