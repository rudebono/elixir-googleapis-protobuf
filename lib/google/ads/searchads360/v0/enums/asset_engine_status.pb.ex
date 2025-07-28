defmodule Google.Ads.Searchads360.V0.Enums.AssetEngineStatusEnum.AssetEngineStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SERVING, 2
  field :SERVING_LIMITED, 3
  field :DISAPPROVED, 4
  field :DISABLED, 5
  field :REMOVED, 6
end

defmodule Google.Ads.Searchads360.V0.Enums.AssetEngineStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
