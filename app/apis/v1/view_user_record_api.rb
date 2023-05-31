module V1

    class  ViewUserRecordApi < Grape::API
        resource :view_user_record do 

            params do
                requires :user_account, type: String

            end

            post do

            user_record = ViewUserRecord.new(params[:user_account])
                
            record_hash={}


            user_record.view.each_with_index do |record,i|
                    
                    if record.length == 6
                        record_hash[i]={
                            created_at:record[0],
                            user_id:record[1], 
                            contents:record[2], 
                            sets:record[3], 
                            reps:record[4], 
                            weight:record[5]
                        }
                    else record.length == 5
                        record_hash[i]={
                            created_at:record[0],
                            user_id:record[1], 
                            contents:record[2], 
                            duration:record[3], 
                            distance:record[4]
                        }
                    end
              
                end

                return record_hash
                #回傳的好像沒被視為json?

            end    
        end
    end
end