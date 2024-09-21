defmodule Google.Ads.Googleads.V17.Services.GetSmartCampaignStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignNotEligibleDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :not_eligible_reason, 1,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.SmartCampaignNotEligibleReasonEnum.SmartCampaignNotEligibleReason,
    json_name: "notEligibleReason",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignEligibleDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :last_impression_date_time, 1,
    proto3_optional: true,
    type: :string,
    json_name: "lastImpressionDateTime"

  field :end_date_time, 2, proto3_optional: true, type: :string, json_name: "endDateTime"
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignPausedDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :paused_date_time, 1, proto3_optional: true, type: :string, json_name: "pausedDateTime"
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignRemovedDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :removed_date_time, 1, proto3_optional: true, type: :string, json_name: "removedDateTime"
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignEndedDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :end_date_time, 1, proto3_optional: true, type: :string, json_name: "endDateTime"
end

defmodule Google.Ads.Googleads.V17.Services.GetSmartCampaignStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :smart_campaign_status_details, 0

  field :smart_campaign_status, 1,
    type: Google.Ads.Googleads.V17.Enums.SmartCampaignStatusEnum.SmartCampaignStatus,
    json_name: "smartCampaignStatus",
    enum: true

  field :not_eligible_details, 2,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignNotEligibleDetails,
    json_name: "notEligibleDetails",
    oneof: 0

  field :eligible_details, 3,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignEligibleDetails,
    json_name: "eligibleDetails",
    oneof: 0

  field :paused_details, 4,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignPausedDetails,
    json_name: "pausedDetails",
    oneof: 0

  field :removed_details, 5,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignRemovedDetails,
    json_name: "removedDetails",
    oneof: 0

  field :ended_details, 6,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignEndedDetails,
    json_name: "endedDetails",
    oneof: 0
end

defmodule Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.SmartCampaignSettingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignSettingOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update, 1, type: Google.Ads.Googleads.V17.Resources.SmartCampaignSetting
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :smart_campaign_setting, 2,
    type: Google.Ads.Googleads.V17.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignSettingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.SmartCampaignSettingService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetSmartCampaignStatus,
      Google.Ads.Googleads.V17.Services.GetSmartCampaignStatusRequest,
      Google.Ads.Googleads.V17.Services.GetSmartCampaignStatusResponse

  rpc :MutateSmartCampaignSettings,
      Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingsRequest,
      Google.Ads.Googleads.V17.Services.MutateSmartCampaignSettingsResponse
end

defmodule Google.Ads.Googleads.V17.Services.SmartCampaignSettingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.SmartCampaignSettingService.Service
end