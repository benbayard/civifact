class StancesController < ApplicationController
  def new
  	@stance = Stance.new
  	@for_politician = Politician.find(params[:politician_id])
  	@for_issue = Issue.find(params[:issue_id])
  	respond_to do |format|               
    	format.js
  	end  
  end

  def create
  	@stance = Stance.new(params[:stance])

  	respond_to do |format|
      if @stance.save
        format.js 
      end
    end
  end

end
