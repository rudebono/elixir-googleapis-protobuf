defmodule Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.AdGroupExtensionSettingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.AdGroupExtensionSettingOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V13.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :create, 1, type: Google.Ads.Googleads.V13.Resources.AdGroupExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V13.Resources.AdGroupExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingResult
end

defmodule Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_extension_setting, 2,
    type: Google.Ads.Googleads.V13.Resources.AdGroupExtensionSetting,
    json_name: "adGroupExtensionSetting"
end

defmodule Google.Ads.Googleads.V13.Services.AdGroupExtensionSettingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v13.services.AdGroupExtensionSettingService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateAdGroupExtensionSettings,
      Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingsRequest,
      Google.Ads.Googleads.V13.Services.MutateAdGroupExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V13.Services.AdGroupExtensionSettingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.AdGroupExtensionSettingService.Service
end