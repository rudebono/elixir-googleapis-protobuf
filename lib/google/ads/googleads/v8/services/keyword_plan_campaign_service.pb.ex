defmodule Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.KeywordPlanCampaignService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetKeywordPlanCampaign,
      Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignRequest,
      Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign

  rpc :MutateKeywordPlanCampaigns,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsRequest,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Service
end
