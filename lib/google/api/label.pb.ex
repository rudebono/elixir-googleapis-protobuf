defmodule Google.Api.LabelDescriptor.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STRING, 0
  field :BOOL, 1
  field :INT64, 2
end

defmodule Google.Api.LabelDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string

  field :value_type, 2,
    type: Google.Api.LabelDescriptor.ValueType,
    json_name: "valueType",
    enum: true

  field :description, 3, type: :string
end
