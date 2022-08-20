defmodule Google.Type.DateTime do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :time_offset, 0

  field :year, 1, type: :int32
  field :month, 2, type: :int32
  field :day, 3, type: :int32
  field :hours, 4, type: :int32
  field :minutes, 5, type: :int32
  field :seconds, 6, type: :int32
  field :nanos, 7, type: :int32
  field :utc_offset, 8, type: Google.Protobuf.Duration, json_name: "utcOffset", oneof: 0
  field :time_zone, 9, type: Google.Type.TimeZone, json_name: "timeZone", oneof: 0
end

defmodule Google.Type.TimeZone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :version, 2, type: :string
end