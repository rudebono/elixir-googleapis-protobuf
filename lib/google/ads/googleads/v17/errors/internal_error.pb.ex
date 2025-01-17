defmodule Google.Ads.Googleads.V17.Errors.InternalErrorEnum.InternalError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INTERNAL_ERROR, 2
  field :ERROR_CODE_NOT_PUBLISHED, 3
  field :TRANSIENT_ERROR, 4
  field :DEADLINE_EXCEEDED, 5
end

defmodule Google.Ads.Googleads.V17.Errors.InternalErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
