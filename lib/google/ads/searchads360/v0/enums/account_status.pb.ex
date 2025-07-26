defmodule Google.Ads.Searchads360.V0.Enums.AccountStatusEnum.AccountStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :PAUSED, 3
  field :SUSPENDED, 4
  field :REMOVED, 5
  field :DRAFT, 6
end

defmodule Google.Ads.Searchads360.V0.Enums.AccountStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
