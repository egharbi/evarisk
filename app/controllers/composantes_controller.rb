class ComposantesController < ApplicationController
  # GET /composantes
  # GET /composantes.json

  def index
    @composantes = Composante.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @composantes }
    end
  end

  # GET /composantes/1
  # GET /composantes/1.json
  def show
    @composante = Composante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @composante }
    end
  end

  # GET /composantes/new
  # GET /composantes/new.json
  def new
    @composante = Composante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @composante }
    end
  end

  # GET /composantes/1/edit
  def edit
    @composante = Composante.find(params[:id])
  end

  # POST /composantes
  # POST /composantes.json
  def create
    @composante = Composante.new(params[:composante])

    respond_to do |format|
      if @composante.save
        format.html { redirect_to @composante, notice: 'Composante was successfully created.' }
        format.json { render json: @composante, status: :created, location: @composante }
      else
        format.html { render action: "new" }
        format.json { render json: @composante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /composantes/1
  # PUT /composantes/1.json
  def update
    @composante = Composante.find(params[:id])

    respond_to do |format|
      if @composante.update_attributes(params[:composante])
        format.html { redirect_to @composante, notice: 'Composante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @composante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /composantes/1
  # DELETE /composantes/1.json
  def destroy
    @composante = Composante.find(params[:id])
    @composante.destroy

    respond_to do |format|
      format.html { redirect_to composantes_url }
      format.json { head :no_content }
    end
  end
end

