require_relative 'common_error'

class RecordSetsGet

    attr_accessor :account #, :user

    def initialize(account)
        @user_id = User.find_by(account:account).id
        
    end

    def get_record()
        records=[]
        RecordSetRepository.get_sets_record(@user_id).each do |record|
            records.append( [
                
                record.user_id, 
                record.contents, 
                record.sets, 
                record.reps, 
                record.weight,
                record.created_at,
                record.id,
                User.find_by(id:record.user_id).account
                ] )
        end

        return records
    end




end