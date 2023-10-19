defmodule Google.Ads.Googleads.V15.Services.MutateCampaignCustomizersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.CampaignCustomizerOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V15.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V15.Services.CampaignCustomizerOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V15.Resources.CampaignCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.MutateCampaignCustomizersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.MutateCampaignCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V15.Services.MutateCampaignCustomizerResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_customizer, 2,
    type: Google.Ads.Googleads.V15.Resources.CampaignCustomizer,
    json_name: "campaignCustomizer"
end

defmodule Google.Ads.Googleads.V15.Services.CampaignCustomizerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.CampaignCustomizerService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCampaignCustomizers,
      Google.Ads.Googleads.V15.Services.MutateCampaignCustomizersRequest,
      Google.Ads.Googleads.V15.Services.MutateCampaignCustomizersResponse
end

defmodule Google.Ads.Googleads.V15.Services.CampaignCustomizerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.CampaignCustomizerService.Service
end