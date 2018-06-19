class RegisteredApplicationsController < ApplicationController
  include ApplicationHelper
  def index
    @applications = RegisteredApplication.where(user: current_user)
  end

  def new
    @application = RegisteredApplication.new
  end

  def create
    @application = current_user.registered_applications.new(app_params)

    if @application.save
      redirect_to registered_applications_path, notice: "The url was registered!"
    else
      flash[:notice] = "The url wasn't registered, please try again: "
      if @application.errors.any?
        error_handler(@application)
      end
      redirect_to new_registered_application_path
    end
  end

  def read
    @app = RegisteredApplication.find(params[:id])
    @events = @app.events.group_by(&:name)
    @event_count = @events.count

  end

  def destroy
    @app = RegisteredApplication.find(params[:id])

    if @app.destroy
      flash[:alert] = "The application was de-registered!"
    else
      flash[:alert] = "There was an error, please try again!"
    end

    redirect_to registered_applications_path
  end

  private

  def app_params
      params.require(:registered_application).permit(:name,:url)
  end
end
