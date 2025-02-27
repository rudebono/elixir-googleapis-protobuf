defmodule Google.Ads.Googleads.V19.Services.MutateCustomAudiencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.CustomAudienceOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V19.Services.CustomAudienceOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V19.Resources.CustomAudience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V19.Resources.CustomAudience, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.MutateCustomAudiencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.MutateCustomAudienceResult
end

defmodule Google.Ads.Googleads.V19.Services.MutateCustomAudienceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.CustomAudienceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.CustomAudienceService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V19.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V19.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V19.Services.CustomAudienceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.CustomAudienceService.Service
end
