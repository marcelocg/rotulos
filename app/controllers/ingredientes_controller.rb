class IngredientesController < ApplicationController
  # GET /ingredientes
  # GET /ingredientes.json
  def index
    @ingredientes = Ingrediente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredientes }
    end
  end

  # GET /ingredientes/1
  # GET /ingredientes/1.json
  def show
    @ingrediente = Ingrediente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingrediente }
    end
  end

  # GET /ingredientes/new
  # GET /ingredientes/new.json
  def new
    @ingrediente = Ingrediente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingrediente }
    end
  end

  # GET /ingredientes/1/edit
  def edit
    @ingrediente = Ingrediente.find(params[:id])
  end

  # POST /ingredientes
  # POST /ingredientes.json
  def create
    @ingrediente = Ingrediente.new(params[:ingrediente])

    respond_to do |format|
      if @ingrediente.save
        format.html { redirect_to @ingrediente, notice: 'Ingrediente was successfully created.' }
        format.json { render json: @ingrediente, status: :created, location: @ingrediente }
      else
        format.html { render action: "new" }
        format.json { render json: @ingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredientes/1
  # PUT /ingredientes/1.json
  def update
    @ingrediente = Ingrediente.find(params[:id])

    respond_to do |format|
      if @ingrediente.update_attributes(params[:ingrediente])
        format.html { redirect_to @ingrediente, notice: 'Ingrediente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientes/1
  # DELETE /ingredientes/1.json
  def destroy
    @ingrediente = Ingrediente.find(params[:id])
    @ingrediente.destroy

    respond_to do |format|
      format.html { redirect_to ingredientes_url }
      format.json { head :no_content }
    end
  end
end
