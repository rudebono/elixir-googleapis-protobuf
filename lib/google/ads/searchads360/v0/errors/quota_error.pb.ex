defmodule Google.Ads.Searchads360.V0.Errors.QuotaErrorEnum.QuotaError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESOURCE_EXHAUSTED, 2
  field :RESOURCE_TEMPORARILY_EXHAUSTED, 4
end

defmodule Google.Ads.Searchads360.V0.Errors.QuotaErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end