module V1

    class GetIdFromAccountApi < Grape::API
  
      resource :get_id do
  
  
        params do
          requires :account, type: String 
        end
  
        post do
  
          user=User.find_by(account:params[:account])
          return {user_id: user.id}

  
        end
  
      end
  
  
    end
  
  
  end