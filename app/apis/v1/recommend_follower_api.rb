module V1
    class  RecommendFollowerApi < Grape::API

        resource :recommend_follower do
            params do
                requires :user_id, type: Integer
            end
        
        post do
            findfriend = RecommendFollow.new()
            friend_recomd = findfriend.recomd( params[:user_id], [4,3,2] )
            {

                account1: User.find_by(id:friend_recomd[0]).account,
                account2: User.find_by(id:friend_recomd[1]).account,
                account3: User.find_by(id:friend_recomd[2]).account
            }
        end

    end
end
end