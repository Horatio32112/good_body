class RecordTimeRepository
    class << self

        def get_times_record(user_id)
            a=TimesRecord.where(
                user_id: user_id
            )
            return a
        end

        def create(user_id, contents, duration, distance)
            TimesRecord.create!(user_id: user_id, contents: contents, duration: duration, distance: distance)
        end

        def delete(time_record)
            time_record.destroy
        end

        def update(time_record, contents, duration, distance)
            time_record.update!(contents: contents, duration: duration, distance: distance)
        end
    end
end