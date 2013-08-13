class CampaignResultsController < ApplicationController
  before_filter :authorize
  # GET /campaign_results
  # GET /campaign_results.json
  def index
    @campaign_results = CampaignResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaign_results }
    end
  end

  # GET /campaign_results/1
  # GET /campaign_results/1.json
  def show
    @campaign_result = CampaignResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaign_result }
    end
  end

  # GET /campaign_results/new
  # GET /campaign_results/new.json
  def new
    @campaign_result = CampaignResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campaign_result }
    end
  end

  # GET /campaign_results/1/edit
  def edit
    @campaign_result = CampaignResult.find(params[:id])
  end

  # POST /campaign_results
  # POST /campaign_results.json
  def create
    @campaign_result = CampaignResult.new(params[:campaign_result])

    respond_to do |format|
      if @campaign_result.save
        format.html { redirect_to @campaign_result, notice: 'Campaign result was successfully created.' }
        format.json { render json: @campaign_result, status: :created, location: @campaign_result }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_results/1
  # PUT /campaign_results/1.json
  def update
    @campaign_result = CampaignResult.find(params[:id])

    respond_to do |format|
      if @campaign_result.update_attributes(params[:campaign_result])
        format.html { redirect_to @campaign_result, notice: 'Campaign result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaign_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_results/1
  # DELETE /campaign_results/1.json
  def destroy
    @campaign_result = CampaignResult.find(params[:id])
    @campaign_result.destroy

    respond_to do |format|
      format.html { redirect_to campaign_results_url }
      format.json { head :no_content }
    end
  end
end
