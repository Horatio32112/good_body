module V1

    class RecordSetsGetApi < Grape::API
  
      resource :record_sets_get do

        # 刪除健身紀錄
        params do
          requires :account, type: String
        end
        
        post do
          record_function = RecordSetsGet.new(params[:account])
          records=record_function.get_record()

          record_hash=[]

          records.each_with_index do |record,i|
                  
                      record_hash[i]={
                          
                          user_id:record[0], 
                          contents:record[1], 
                          sets:record[2], 
                          reps:record[3], 
                          weight:record[4],
                          created_at:record[5]
                      }
        end

        return record_hash
      
      end
    
    end

  end
end