require 'net/http'
class WelcomeController < ApplicationController
    

    def homePage


        puts params[:user_id]
    
            uri = URI("http://13.126.174.129/tabeeb/get_screens.php")
    
    
            @res = Net::HTTP.post_form(uri, 'user_id' => params[:user_id], 'page' => params[:page], 'per_page' => 50)
    
    
           @data = JSON.parse(@res.body)
    
        @screen = @data["visits_screens"]
    
    
        @user_id_saved = params[:user_id]
    
        @total_count = @data["visits_screens_count"]
    
    
    
    
    
          end
    
end
