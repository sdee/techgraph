class TechniquesController < ApplicationController
  # GET /techniques
  # GET /techniques.json
  def index
    @techniques = Technique.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @techniques }
    end
  end
  # GET /techniques/1

  def show
  # GET /techniques/1.json

    @technique = Technique.find(params[:id])
      format.html # show.html.erb
    respond_to do |format|
      format.json { render :json => @technique }
    end
  end

  # GET /techniques/new
  # GET /techniques/new.json
  def new
    @technique = Technique.new

    respond_to do |format|
      format.html # new.html.erb
      # format.json { render :json => @technique }
    end
  end

  # GET /techniques/1/edit
  def edit
    @technique = Technique.find(params[:id])
  end

  # POST /techniques
  # POST /techniques.json
  def create
    @technique = Technique.new(params[:technique])

    respond_to do |format|
      if @technique.save
        format.html { redirect_to @technique, :notice => 'Technique was successfully created.' }
        format.json { render :json => @technique, :status => :created, :location => @technique }
      else
        format.html { render :action => "new" }
        format.json { render :json => @technique.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /techniques/1
  # PUT /techniques/1.json
  def update
    @technique = Technique.find(params[:id])

    respond_to do |format|
      if @technique.update_attributes(params[:technique])
        format.html { redirect_to @technique, :notice => 'Technique was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @technique.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /techniques/1
  # DELETE /techniques/1.json
  def destroy
    @technique = Technique.find(params[:id])
    @technique.destroy

    respond_to do |format|
      format.html { redirect_to techniques_url }
      format.json { head :ok }
    end
  end
end
