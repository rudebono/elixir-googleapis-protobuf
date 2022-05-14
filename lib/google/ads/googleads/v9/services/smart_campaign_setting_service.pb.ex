defmodule Google.Ads.Googleads.V9.Services.GetSmartCampaignSettingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.SmartCampaignSettingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.SmartCampaignSettingOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update, 1, type: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :smart_campaign_setting, 2,
    type: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"
end
defmodule Google.Ads.Googleads.V9.Services.SmartCampaignSettingService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.SmartCampaignSettingService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetSmartCampaignSetting,
      Google.Ads.Googleads.V9.Services.GetSmartCampaignSettingRequest,
      Google.Ads.Googleads.V9.Resources.SmartCampaignSetting

  rpc :MutateSmartCampaignSettings,
      Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsRequest,
      Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsResponse
end

defmodule Google.Ads.Googleads.V9.Services.SmartCampaignSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.SmartCampaignSettingService.Service
end
