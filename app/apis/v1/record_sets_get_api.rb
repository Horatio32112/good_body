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

          record_hash={}

          records.each_with_index do |record,i|
                  
                      record_hash[i]={
                          created_at:record[0],
                          user_id:record[1], 
                          contents:record[2], 
                          sets:record[3], 
                          reps:record[4], 
                          weight:record[5]
                      }
        end

        return record_hash
      
      end
    
    end

  end
end