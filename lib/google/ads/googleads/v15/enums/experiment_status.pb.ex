defmodule Google.Ads.Googleads.V15.Enums.ExperimentStatusEnum.ExperimentStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :HALTED, 4
  field :PROMOTED, 5
  field :SETUP, 6
  field :INITIATED, 7
  field :GRADUATED, 8
end

defmodule Google.Ads.Googleads.V15.Enums.ExperimentStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end