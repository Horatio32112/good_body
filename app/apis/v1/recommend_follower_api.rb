module V1
    class  RecommendFollowerApi < Grape::API

        resource :recommend_follower do
            params do
                requires :user_id, type: Integer
            end
        
        post do
            findfriend = RecommendFollow.new()
            friend_recomd = findfriend.recomd( params[:user_id], [4,3,2] )
            friend_recomd.compact!
            if friend_recomd.length()==3
                {account1: User.find_by(id:friend_recomd[0]).account,account2: User.find_by(id:friend_recomd[1]).account,account3: User.find_by(id:friend_recomd[2]).account}
            elsif friend_recomd.length()==2
                {account1: User.find_by(id:friend_recomd[0]).account,account2: User.find_by(id:friend_recomd[1]).account}
            elsif friend_recomd.length()==1
                {account1: User.find_by(id:friend_recomd[0]).account}
            else
                {}
            end

        end

    end
end
end