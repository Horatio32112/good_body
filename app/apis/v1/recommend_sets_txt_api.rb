module V1
    class  RecommendSetsTxtApi < Grape::API

        resource :recommend_sets_txt do
            params do
                requires :user_id, type: Integer
            end
        
        post do
            findtxt = RecommendTxt.new()
            sets_txt = findtxt.find_sets_txt_recommend(params[:user_id]) #arr(2)
            record_hash={}
            sets_txt.each_with_index do |record,i|
                    
                    record_hash[i]={
                        id:record[0],
                        created_at:record[1],
                        user_id:record[2], 
                        contents:record[3], 
                        sets:record[4], 
                        reps:record[5], 
                        weight:record[6],
                        account:record[7]
                    }
          
            end

            return record_hash

        end

    end
end
end