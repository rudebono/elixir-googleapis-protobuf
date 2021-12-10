defmodule Google.Ads.Googleads.V9.Services.GetSmartCampaignSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.SmartCampaignSettingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct update: nil,
            update_mask: nil

  field :update, 1, type: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateSmartCampaignSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          smart_campaign_setting: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting.t() | nil
        }

  defstruct resource_name: "",
            smart_campaign_setting: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :smart_campaign_setting, 2,
    type: Google.Ads.Googleads.V9.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"
end
defmodule Google.Ads.Googleads.V9.Services.SmartCampaignSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.SmartCampaignSettingService"

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
