defmodule Google.Ads.Admanager.V1.GetNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.ListNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :networks, 1, repeated: true, type: Google.Ads.Admanager.V1.Network
end

defmodule Google.Ads.Admanager.V1.NetworkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.NetworkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetNetwork, Google.Ads.Admanager.V1.GetNetworkRequest, Google.Ads.Admanager.V1.Network

  rpc :ListNetworks,
      Google.Ads.Admanager.V1.ListNetworksRequest,
      Google.Ads.Admanager.V1.ListNetworksResponse
end

defmodule Google.Ads.Admanager.V1.NetworkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.NetworkService.Service
end
