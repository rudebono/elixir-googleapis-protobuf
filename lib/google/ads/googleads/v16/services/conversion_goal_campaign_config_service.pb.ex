defmodule Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.ConversionGoalCampaignConfigOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V16.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Services.ConversionGoalCampaignConfigOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :update, 1,
    type: Google.Ads.Googleads.V16.Resources.ConversionGoalCampaignConfig,
    oneof: 0
end

defmodule Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigResult
end

defmodule Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :conversion_goal_campaign_config, 2,
    type: Google.Ads.Googleads.V16.Resources.ConversionGoalCampaignConfig,
    json_name: "conversionGoalCampaignConfig"
end

defmodule Google.Ads.Googleads.V16.Services.ConversionGoalCampaignConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.ConversionGoalCampaignConfigService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateConversionGoalCampaignConfigs,
      Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigsRequest,
      Google.Ads.Googleads.V16.Services.MutateConversionGoalCampaignConfigsResponse
end

defmodule Google.Ads.Googleads.V16.Services.ConversionGoalCampaignConfigService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V16.Services.ConversionGoalCampaignConfigService.Service
end