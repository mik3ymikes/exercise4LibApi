class UsersController < ApplicationController

def index
user=User.all
render json:user
end


def show
user=User.find(params[:id])
if user.save
    render json: user
else
    render json: {error: "unable to show"}
end
end



def create
    user=User.create(user_params)
    if user.save
        render json: user
    else
        render json: {error: "unable to create"}
    end
end


def update
    user = User.find(params[:id])
    if user.update(user_params)
    render json: user
    else
        render json: {error: "unable to update"}
    end
   end


   def destroy
    user = User.find(params[:id])
    if user.destroy
    render json: user
    else
        render json: {error: "unable to destroy"}
    end
   end





def user_params
    params.require(:user).permit(:name, :email)
end
end
