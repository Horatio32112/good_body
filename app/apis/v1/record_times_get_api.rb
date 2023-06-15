module V1

    class RecordTimesGetApi < Grape::API
  
      resource :record_times_get do

        # 刪除健身紀錄
        params do
          requires :account, type: String
        end
        
        post do
          record_function = RecordTimesGet.new(params[:account])
          records=record_function.get_record()

          record_hash={}

          records.each_with_index do |record,i|
                    record_hash[i]={
                        created_at:record[0],
                        user_id:record[1], 
                        contents:record[2], 
                        duration:record[3], 
                        distance:record[4]
                    }
        end

        return record_hash
      
      end
    
    end

  end
end