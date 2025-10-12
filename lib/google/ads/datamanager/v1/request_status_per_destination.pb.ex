defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.RequestStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REQUEST_STATUS_UNKNOWN, 0
  field :SUCCESS, 1
  field :PROCESSING, 2
  field :FAILED, 3
  field :PARTIAL_SUCCESS, 4
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestAudienceMembersStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :status, 0

  field :user_data_ingestion_status, 1,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestUserDataStatus,
    json_name: "userDataIngestionStatus",
    oneof: 0

  field :mobile_data_ingestion_status, 2,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestMobileDataStatus,
    json_name: "mobileDataIngestionStatus",
    oneof: 0

  field :pair_data_ingestion_status, 3,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestPairDataStatus,
    json_name: "pairDataIngestionStatus",
    oneof: 0
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveAudienceMembersStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :status, 0

  field :user_data_removal_status, 1,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveUserDataStatus,
    json_name: "userDataRemovalStatus",
    oneof: 0

  field :mobile_data_removal_status, 2,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveMobileDataStatus,
    json_name: "mobileDataRemovalStatus",
    oneof: 0

  field :pair_data_removal_status, 3,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemovePairDataStatus,
    json_name: "pairDataRemovalStatus",
    oneof: 0
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestEventsStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestUserDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :user_identifier_count, 2, type: :int64, json_name: "userIdentifierCount"

  field :upload_match_rate_range, 3,
    type: Google.Ads.Datamanager.V1.MatchRateRange,
    json_name: "uploadMatchRateRange",
    enum: true
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveUserDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :user_identifier_count, 2, type: :int64, json_name: "userIdentifierCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestMobileDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :mobile_id_count, 2, type: :int64, json_name: "mobileIdCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveMobileDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :mobile_id_count, 2, type: :int64, json_name: "mobileIdCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestPairDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :pair_id_count, 2, type: :int64, json_name: "pairIdCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemovePairDataStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :pair_id_count, 2, type: :int64, json_name: "pairIdCount"
end

defmodule Google.Ads.Datamanager.V1.RequestStatusPerDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :status, 0

  field :destination, 1, type: Google.Ads.Datamanager.V1.Destination

  field :request_status, 2,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.RequestStatus,
    json_name: "requestStatus",
    enum: true

  field :error_info, 3, type: Google.Ads.Datamanager.V1.ErrorInfo, json_name: "errorInfo"
  field :warning_info, 7, type: Google.Ads.Datamanager.V1.WarningInfo, json_name: "warningInfo"

  field :audience_members_ingestion_status, 4,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestAudienceMembersStatus,
    json_name: "audienceMembersIngestionStatus",
    oneof: 0

  field :events_ingestion_status, 5,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.IngestEventsStatus,
    json_name: "eventsIngestionStatus",
    oneof: 0

  field :audience_members_removal_status, 6,
    type: Google.Ads.Datamanager.V1.RequestStatusPerDestination.RemoveAudienceMembersStatus,
    json_name: "audienceMembersRemovalStatus",
    oneof: 0
end
