defmodule Google.Ads.Googleads.V22.Enums.DataLinkStatusEnum.DataLinkStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REQUESTED, 2
  field :PENDING_APPROVAL, 3
  field :ENABLED, 4
  field :DISABLED, 5
  field :REVOKED, 6
  field :REJECTED, 7
end

defmodule Google.Ads.Googleads.V22.Enums.DataLinkStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
