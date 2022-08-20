defmodule Google.Ads.Googleads.V11.Services.MutateCampaignLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CampaignLabelOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V11.Services.CampaignLabelOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V11.Resources.CampaignLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.MutateCampaignLabelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateCampaignLabelResult
end

defmodule Google.Ads.Googleads.V11.Services.MutateCampaignLabelResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.CampaignLabelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.CampaignLabelService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateCampaignLabels,
      Google.Ads.Googleads.V11.Services.MutateCampaignLabelsRequest,
      Google.Ads.Googleads.V11.Services.MutateCampaignLabelsResponse
end

defmodule Google.Ads.Googleads.V11.Services.CampaignLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.CampaignLabelService.Service
end