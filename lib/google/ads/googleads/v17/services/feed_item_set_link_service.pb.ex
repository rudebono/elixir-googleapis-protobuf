defmodule Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.FeedItemSetLinkOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V17.Services.FeedItemSetLinkOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V17.Resources.FeedItemSetLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinkResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinkResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.FeedItemSetLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.FeedItemSetLinkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateFeedItemSetLinks,
      Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinksRequest,
      Google.Ads.Googleads.V17.Services.MutateFeedItemSetLinksResponse
end

defmodule Google.Ads.Googleads.V17.Services.FeedItemSetLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.FeedItemSetLinkService.Service
end
