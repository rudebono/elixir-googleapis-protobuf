defmodule Google.Ads.Googleads.V20.Resources.OfflineUserDataJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 9, proto3_optional: true, type: :int64, deprecated: false

  field :external_id, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "externalId",
    deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V20.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V20.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus,
    enum: true,
    deprecated: false

  field :failure_reason, 6,
    type:
      Google.Ads.Googleads.V20.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason,
    json_name: "failureReason",
    enum: true,
    deprecated: false

  field :operation_metadata, 11,
    type: Google.Ads.Googleads.V20.Resources.OfflineUserDataJobMetadata,
    json_name: "operationMetadata",
    deprecated: false

  field :customer_match_user_list_metadata, 7,
    type: Google.Ads.Googleads.V20.Common.CustomerMatchUserListMetadata,
    json_name: "customerMatchUserListMetadata",
    oneof: 0,
    deprecated: false

  field :store_sales_metadata, 8,
    type: Google.Ads.Googleads.V20.Common.StoreSalesMetadata,
    json_name: "storeSalesMetadata",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Resources.OfflineUserDataJobMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :match_rate_range, 1,
    type:
      Google.Ads.Googleads.V20.Enums.OfflineUserDataJobMatchRateRangeEnum.OfflineUserDataJobMatchRateRange,
    json_name: "matchRateRange",
    enum: true,
    deprecated: false
end
