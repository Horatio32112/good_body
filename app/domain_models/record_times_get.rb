require_relative 'common_error'

class RecordTimesGet

    attr_accessor :account #, :user

    def initialize(account)
        @user_id = User.find_by(account:account).id
        
    end

    def get_record()
        
        records=[]
        RecordTimeRepository.get_times_record(@user_id).each do |record|
            records.append( [
                record.created_at,
                record.user_id, 
                record.contents, 
                record.duration, 
                record.distance,
                record.id,
                User.find_by(id:record.user_id).account
                ])
        end

        return records
    end




end