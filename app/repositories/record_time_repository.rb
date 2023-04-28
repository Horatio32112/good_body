class RecordTimeRepository
    class << self

        def create(user_id, contents, duration, distance)
            TimesRecord.create!(user_id: user_id, contents: contents, duration: duration, distance: distance)
        end

        def delete(time_record)
            TimesRecord.destroy(time_record.id)
        end

    end
end