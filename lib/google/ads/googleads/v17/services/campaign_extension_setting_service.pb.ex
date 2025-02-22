defmodule Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.CampaignExtensionSettingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.CampaignExtensionSettingOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V17.Resources.CampaignExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V17.Resources.CampaignExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_extension_setting, 2,
    type: Google.Ads.Googleads.V17.Resources.CampaignExtensionSetting,
    json_name: "campaignExtensionSetting"
end

defmodule Google.Ads.Googleads.V17.Services.CampaignExtensionSettingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.CampaignExtensionSettingService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCampaignExtensionSettings,
      Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingsRequest,
      Google.Ads.Googleads.V17.Services.MutateCampaignExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V17.Services.CampaignExtensionSettingService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V17.Services.CampaignExtensionSettingService.Service
end
