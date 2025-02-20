defmodule Google.Ads.Admanager.V1.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.UserService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.UserService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetUser, Google.Ads.Admanager.V1.GetUserRequest, Google.Ads.Admanager.V1.User
end

defmodule Google.Ads.Admanager.V1.UserService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.UserService.Service
end
