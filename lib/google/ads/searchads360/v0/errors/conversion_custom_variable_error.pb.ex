defmodule Google.Ads.Searchads360.V0.Errors.ConversionCustomVariableErrorEnum.ConversionCustomVariableError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_NAME, 2
  field :DUPLICATE_TAG, 3
  field :RESERVED_TAG, 4
  field :NOT_FOUND, 5
  field :NOT_AVAILABLE, 6
  field :INCOMPATIBLE_TYPE, 7
  field :INVALID_METRIC, 8
  field :EXCEEDS_CARDINALITY_LIMIT, 9
  field :INVALID_DIMENSION, 10
  field :INCOMPATIBLE_WITH_SELECTED_RESOURCE, 11
end

defmodule Google.Ads.Searchads360.V0.Errors.ConversionCustomVariableErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
