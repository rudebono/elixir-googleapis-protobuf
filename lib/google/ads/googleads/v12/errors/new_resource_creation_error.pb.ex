defmodule Google.Ads.Googleads.V12.Errors.NewResourceCreationErrorEnum.NewResourceCreationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_SET_ID_FOR_CREATE, 2
  field :DUPLICATE_TEMP_IDS, 3
  field :TEMP_ID_RESOURCE_HAD_ERRORS, 4
end

defmodule Google.Ads.Googleads.V12.Errors.NewResourceCreationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end