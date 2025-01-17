defmodule Google.Cloud.Securitycenter.V1.RunAssetDiscoveryResponse.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :COMPLETED, 1
  field :SUPERSEDED, 2
  field :TERMINATED, 3
end

defmodule Google.Cloud.Securitycenter.V1.RunAssetDiscoveryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Securitycenter.V1.RunAssetDiscoveryResponse.State,
    enum: true

  field :duration, 2, type: Google.Protobuf.Duration
end
