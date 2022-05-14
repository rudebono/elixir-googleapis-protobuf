defmodule Google.Ads.Googleads.V7.Services.GetFeedItemSetLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.FeedItemSetLinkOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.FeedItemSetLinkOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.FeedItemSetLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinkResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinkResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.FeedItemSetLinkService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.FeedItemSetLinkService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetFeedItemSetLink,
      Google.Ads.Googleads.V7.Services.GetFeedItemSetLinkRequest,
      Google.Ads.Googleads.V7.Resources.FeedItemSetLink

  rpc :MutateFeedItemSetLinks,
      Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinksRequest,
      Google.Ads.Googleads.V7.Services.MutateFeedItemSetLinksResponse
end

defmodule Google.Ads.Googleads.V7.Services.FeedItemSetLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.FeedItemSetLinkService.Service
end
