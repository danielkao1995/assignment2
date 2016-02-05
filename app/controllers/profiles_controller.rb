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

  def edit
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |form|
      if @profile.save
        form.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        form.json { render :show, status: :created, location: @profile }
      end
    end
  end

  def update
    respond_to do |form|
      if @profile.update(profile_params)
        form.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        form.json { render :show, status: :ok, location: @profile }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |form|
      form.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      form.json { head :no_content }
    end
  end

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:Name, :Description, :Country, :string, :Color, :string, :Age, :Weight, :Height)
    end
end
