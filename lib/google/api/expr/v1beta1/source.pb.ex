defmodule Google.Api.Expr.V1beta1.SourceInfo.PositionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int32
end

defmodule Google.Api.Expr.V1beta1.SourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 2, type: :string
  field :line_offsets, 3, repeated: true, type: :int32, json_name: "lineOffsets"

  field :positions, 4,
    repeated: true,
    type: Google.Api.Expr.V1beta1.SourceInfo.PositionsEntry,
    map: true
end

defmodule Google.Api.Expr.V1beta1.SourcePosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: :string
  field :offset, 2, type: :int32
  field :line, 3, type: :int32
  field :column, 4, type: :int32
end
