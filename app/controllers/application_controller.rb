class ApplicationController < ActionController::Base

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :lastname, :biography, :city, :country, :blacklist, :admin, :sadmin])
        #name:string location:string admin:boolean sadmin:boolean biography:string city:string country:string lastname:string blacklist:references 
    end
end
