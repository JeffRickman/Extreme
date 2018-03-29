class ActivitiesController < ApplicationController
def index
  @activities = Activity.all
  #load all activities from the model
end

def new
  @activity = Activity.new
end

#create show method
def show
  @activity = Activity.find(params[:id])
  # find a specific activity in the model to show
end
#uses the id from the url

# create new method

def create
  #render plain: params[:activity].inspect
  #run to inspect params then comment this out
  @activity = Activity.new(activity_params)
  if (@activity.save)
   redirect_to @activity
     # redirects to show view
  else
   render 'new'  # renders new.html.erb for page this method is linked to
  end
end

private def activity_params
  params.require(:activity).permit(:name, :description, :activity_type, :details)
end
#can only take in title and body

  
#create edit method
def edit
  @activity = Activity.find(params[:id])
end

 # create update method
def update
  @activity = Activity.find(params[:id])
  if (@activity.update(activity_params))
   redirect_to @activity
    # redirects to show view
  else
    render 'edit'
  end
end

#create delete method
def destroy
  @activity = Activity.find(params[:id])
  @activity.destroy
  redirect_to activities_path

end


end
