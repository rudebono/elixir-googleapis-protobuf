defmodule Google.Ads.Googleads.V18.Enums.AsyncActionStatusEnum.AsyncActionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_STARTED, 2
  field :IN_PROGRESS, 3
  field :COMPLETED, 4
  field :FAILED, 5
  field :COMPLETED_WITH_WARNING, 6
end

defmodule Google.Ads.Googleads.V18.Enums.AsyncActionStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end