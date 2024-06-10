defmodule Google.Ads.Googleads.V17.Enums.AccountLinkStatusEnum.AccountLinkStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :REQUESTED, 4
  field :PENDING_APPROVAL, 5
  field :REJECTED, 6
  field :REVOKED, 7
end

defmodule Google.Ads.Googleads.V17.Enums.AccountLinkStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end