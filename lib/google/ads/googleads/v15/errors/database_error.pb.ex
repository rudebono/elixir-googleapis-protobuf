defmodule Google.Ads.Googleads.V15.Errors.DatabaseErrorEnum.DatabaseError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONCURRENT_MODIFICATION, 2
  field :DATA_CONSTRAINT_VIOLATION, 3
  field :REQUEST_TOO_LARGE, 4
end

defmodule Google.Ads.Googleads.V15.Errors.DatabaseErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end