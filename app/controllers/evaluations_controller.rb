class EvaluationsController < ApplicationController
  # GET /evaluations
  # GET /evaluations.xml
  def index
    @evaluations = Evaluation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @evaluations }
    end
  end

  # GET /evaluations/1
  # GET /evaluations/1.xml
  def show
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evaluation }
    end
  end

  # GET /evaluations/new
  # GET /evaluations/new.xml
  def new
    @evaluation = Evaluation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @evaluation }
    end
  end

  # GET /evaluations/1/edit
  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  # POST /evaluations
  # POST /evaluations.xml
  def create
    @member = Member.find(params[:member_id])
    @evaluation = @member.evaluations.create!(params[:evaluation])

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to(@evaluation, :notice => 'Evaluation was successfully created.') }
        format.xml  { render :xml => @evaluation, :status => :created, :location => @evaluation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @evaluation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /evaluations/1
  # PUT /evaluations/1.xml
  def update
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      if @evaluation.update_attributes(params[:evaluation])
        format.html { redirect_to(@evaluation, :notice => 'Evaluation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @evaluation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.xml
  def destroy
    @evaluation = Evaluation.find(params[:id])
    @evaluation.destroy

    respond_to do |format|
      format.html { redirect_to(evaluations_url) }
      format.xml  { head :ok }
    end
  end
end
