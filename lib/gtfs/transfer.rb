module GTFS
  class Transfer
    include GTFS::Model

    has_required_attrs :from_stop_id, :to_stop_id, :type
    has_optional_attrs :min_transfer_time
    attr_accessor *attrs

    column_prefix :transfer_

    collection_name :transfers
    required_file false
    uses_filename 'transfers.txt'

    def self.parse_transfers(filename, options={})
      return parse_models(filename, options)
    end
  end
end
