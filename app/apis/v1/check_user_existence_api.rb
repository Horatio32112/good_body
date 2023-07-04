module V1

    class CheckUserExistenceApi < Grape::API
  
      resource :check_user_existence do
  
  
        params do
          requires :account, type: String   
        end
  
        post do
  
          user=User.find_by(account:params[:account])
        
          return {Msg:"User_exist"} if user!=nil
          return {Msg:"User_not_exist"}
        end
  
      end
  
  
    end
  
  
  end