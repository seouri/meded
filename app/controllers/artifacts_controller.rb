class ArtifactsController < ApplicationController
  # GET /artifacts
  # GET /artifacts.xml
  def index
    @artifacts = Artifact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artifacts }
    end
  end

  # GET /artifacts/1
  # GET /artifacts/1.xml
  def show
    @artifact = Artifact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artifact }
    end
  end

  # GET /artifacts/new
  # GET /artifacts/new.xml
  def new
    @artifact = Artifact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artifact }
    end
  end

  # GET /artifacts/1/edit
  def edit
    @artifact = Artifact.find(params[:id])
  end

  # POST /artifacts
  # POST /artifacts.xml
  def create
    @artifact = Artifact.new(params[:artifact])

    respond_to do |format|
      if @artifact.save
        format.html { redirect_to(@artifact, :notice => 'Artifact was successfully created.') }
        format.xml  { render :xml => @artifact, :status => :created, :location => @artifact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artifact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artifacts/1
  # PUT /artifacts/1.xml
  def update
    @artifact = Artifact.find(params[:id])

    respond_to do |format|
      if @artifact.update_attributes(params[:artifact])
        format.html { redirect_to(@artifact, :notice => 'Artifact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artifact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artifacts/1
  # DELETE /artifacts/1.xml
  def destroy
    @artifact = Artifact.find(params[:id])
    @artifact.destroy

    respond_to do |format|
      format.html { redirect_to(artifacts_url) }
      format.xml  { head :ok }
    end
  end
end
