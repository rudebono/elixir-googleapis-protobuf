defmodule Google.Ads.Googleads.V9.Services.GetCampaignRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateCampaignsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CampaignOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.CampaignOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.Campaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.Campaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateCampaignsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V9.Services.MutateCampaignResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateCampaignResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :campaign, 2, type: Google.Ads.Googleads.V9.Resources.Campaign
end
defmodule Google.Ads.Googleads.V9.Services.CampaignService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CampaignService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetCampaign,
      Google.Ads.Googleads.V9.Services.GetCampaignRequest,
      Google.Ads.Googleads.V9.Resources.Campaign

  rpc :MutateCampaigns,
      Google.Ads.Googleads.V9.Services.MutateCampaignsRequest,
      Google.Ads.Googleads.V9.Services.MutateCampaignsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CampaignService.Service
end
