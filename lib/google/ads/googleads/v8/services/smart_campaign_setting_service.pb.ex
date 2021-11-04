defmodule Google.Ads.Googleads.V8.Services.GetSmartCampaignSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:update, :update_mask]

  field :update, 1, type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          smart_campaign_setting: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.t() | nil
        }

  defstruct [:resource_name, :smart_campaign_setting]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :smart_campaign_setting, 2,
    type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting,
    json_name: "smartCampaignSetting"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.SmartCampaignSettingService"

  rpc :GetSmartCampaignSetting,
      Google.Ads.Googleads.V8.Services.GetSmartCampaignSettingRequest,
      Google.Ads.Googleads.V8.Resources.SmartCampaignSetting

  rpc :MutateSmartCampaignSettings,
      Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsRequest,
      Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsResponse
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Service
end
