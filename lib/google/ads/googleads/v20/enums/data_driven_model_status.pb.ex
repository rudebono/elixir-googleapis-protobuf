defmodule Google.Ads.Googleads.V20.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AVAILABLE, 2
  field :STALE, 3
  field :EXPIRED, 4
  field :NEVER_GENERATED, 5
end

defmodule Google.Ads.Googleads.V20.Enums.DataDrivenModelStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
