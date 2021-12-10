defmodule Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigOperation.t()],
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V9.Resources.ConversionGoalCampaignConfig.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V9.Resources.ConversionGoalCampaignConfig, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigResult.t()]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_goal_campaign_config:
            Google.Ads.Googleads.V9.Resources.ConversionGoalCampaignConfig.t() | nil
        }

  defstruct resource_name: "",
            conversion_goal_campaign_config: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :conversion_goal_campaign_config, 2,
    type: Google.Ads.Googleads.V9.Resources.ConversionGoalCampaignConfig,
    json_name: "conversionGoalCampaignConfig"
end
defmodule Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ConversionGoalCampaignConfigService"

  rpc :MutateConversionGoalCampaignConfigs,
      Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigsRequest,
      Google.Ads.Googleads.V9.Services.MutateConversionGoalCampaignConfigsResponse
end

defmodule Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.ConversionGoalCampaignConfigService.Service
end
