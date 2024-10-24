defmodule Google.Ads.Googleads.V18.Services.MutateCampaignBudgetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.CampaignBudgetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Services.CampaignBudgetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V18.Resources.CampaignBudget, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V18.Resources.CampaignBudget, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateCampaignBudgetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateCampaignBudgetResult
end

defmodule Google.Ads.Googleads.V18.Services.MutateCampaignBudgetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V18.Resources.CampaignBudget,
    json_name: "campaignBudget"
end

defmodule Google.Ads.Googleads.V18.Services.CampaignBudgetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.CampaignBudgetService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MutateCampaignBudgets,
      Google.Ads.Googleads.V18.Services.MutateCampaignBudgetsRequest,
      Google.Ads.Googleads.V18.Services.MutateCampaignBudgetsResponse
end

defmodule Google.Ads.Googleads.V18.Services.CampaignBudgetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.CampaignBudgetService.Service
end