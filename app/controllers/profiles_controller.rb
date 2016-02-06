class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_premise)

    respond_to do |form|
      if @profile.save then
        form.html { redirect_to @profile, notice: 'Profile was successfully created.' }
      else
        form.html { redirect_to profiles_path, notice: 'Profile creation failed. Missing Inputs!' }
      end
    end
  end
  
  def edit
  end

  def update
    respond_to do |form|
      if @profile.update(profile_premise) then
        form.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
      else
        form.html { redirect_to profiles_path, notice: 'Profile Editing failed. Missing Inputs!' }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |form|
      form.html { redirect_to profiles_path, notice: 'Profile was successfully destroyed.' }
      form.json { head :no_content }
    end
  end

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_premise
      params.require(:profile).permit(:Name, :Description, :Country, :string, :Color, :string, :Age, :Weight, :Height)
    end
    
    def profiles_chart_data
        @profiles.each do |profile|
            {
                Age:profile.Age,
                Height:profile.Height,
                Weight:profile.Weight
            }
        end
    end
    
  def remove_all
    Profile.delete_all
    flash[:notice] = "You have removed all results!"
    redirect_to profiles_path
  end
end
