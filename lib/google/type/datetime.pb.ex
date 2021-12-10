defmodule Google.Type.DateTime do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset:
            {:utc_offset, Google.Protobuf.Duration.t() | nil}
            | {:time_zone, Google.Type.TimeZone.t() | nil},
          year: integer,
          month: integer,
          day: integer,
          hours: integer,
          minutes: integer,
          seconds: integer,
          nanos: integer
        }

  defstruct time_offset: nil,
            year: 0,
            month: 0,
            day: 0,
            hours: 0,
            minutes: 0,
            seconds: 0,
            nanos: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          version: String.t()
        }

  defstruct id: "",
            version: ""

  field :id, 1, type: :string
  field :version, 2, type: :string
end
