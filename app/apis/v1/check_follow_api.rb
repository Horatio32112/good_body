module V1

    class CheckFollowApi < Grape::API
  
      resource :check_follow do
  
  
        params do
          requires :subject_user_account, type: String 
          requires :object_user_account, type: String   
        end
  
        post do
  
          follow_user = FollowAndUnfollowUser.new(params[:subject_user_account])
  
          Msg=follow_user.check_follow(params[:object_user_account])
        
          return {Msg:Msg}
  
        end
  
      end
  
  
    end
  
  
  end