defmodule Google.Ads.Googleads.V9.Services.GetAdGroupExtensionSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct operation: nil,
            update_mask: nil,
            response_content_type: :UNSPECIFIED

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_extension_setting:
            Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting.t() | nil
        }

  defstruct resource_name: "",
            ad_group_extension_setting: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :ad_group_extension_setting, 2,
    type: Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting,
    json_name: "adGroupExtensionSetting"
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AdGroupExtensionSettingService"

  rpc :GetAdGroupExtensionSetting,
      Google.Ads.Googleads.V9.Services.GetAdGroupExtensionSettingRequest,
      Google.Ads.Googleads.V9.Resources.AdGroupExtensionSetting

  rpc :MutateAdGroupExtensionSettings,
      Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingsRequest,
      Google.Ads.Googleads.V9.Services.MutateAdGroupExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupExtensionSettingService.Service
end
