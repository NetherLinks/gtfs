module GTFS
  class CalendarDate
    include GTFS::Model

    has_required_attrs :service_id, :date, :exception_type
    attr_accessor *attrs

    collection_name :calendar_dates
    required_file true
    uses_filename 'calendar_dates.txt'

    def self.parse_calendar_dates(filename, options={})
      return parse_models(filename, options)
    end
  end
end
