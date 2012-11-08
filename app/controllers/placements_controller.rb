class PlacementsController < ApplicationController
  before_filter :load_person
  # POST /placements
  # POST /placements.json
  def create
    @placement = @person.placements.new(params[:placement])
    if @placement.save
      respond_to do |format|
        format.html {redirect_to @person, :notice => 'Placement was successfully created.'}
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @person, :alert => 'Unable to add Placement'}
        format.js { render 'fail_create.js.erb'}
      end
    end
  end
 def destroy
    @placement = @person.placements.find(params[:id])
    @placement.destroy
    respond_to do |format|
      format.html { redirect_to @person, :notice => 'Placement Deleted'}
      format.js
    end    
  end
  private
    def load_person
      @person = Person.find(params[:person_id])
    end
end
