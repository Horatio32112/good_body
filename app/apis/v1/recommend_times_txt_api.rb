module V1
    class  RecommendTimesTxtApi < Grape::API

        resource :recommend_times_txt do
            params do
                requires :user_id, type: Integer
            end
        
        post do
            findtxt = RecommendTxt.new()

            times_txt=txt = findtxt.find_times_txt_recommend(params[:user_id])
            record_hash={}
            times_txt.each_with_index do |record,i|
                    
                    record_hash[i]={
                        id:record[0],
                        created_at:record[1],
                        user_id:record[2], 
                        contents:record[3], 
                        duration:record[4], 
                        distance:record[5],
                        account:record[6]
                    }
          
            end

            return record_hash
            #回傳的好像沒被視為json?

        end    

        end

    end
end