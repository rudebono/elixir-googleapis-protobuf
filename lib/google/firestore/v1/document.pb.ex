defmodule Google.Firestore.V1.Document.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Firestore.V1.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Firestore.V1.Value
end
defmodule Google.Firestore.V1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          fields: %{String.t() => Google.Firestore.V1.Value.t() | nil},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            fields: %{},
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string
  field :fields, 2, repeated: true, type: Google.Firestore.V1.Document.FieldsEntry, map: true
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Firestore.V1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_type:
            {:null_value, Google.Protobuf.NullValue.t()}
            | {:boolean_value, boolean}
            | {:integer_value, integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:timestamp_value, Google.Protobuf.Timestamp.t() | nil}
            | {:string_value, String.t()}
            | {:bytes_value, binary}
            | {:reference_value, String.t()}
            | {:geo_point_value, Google.Type.LatLng.t() | nil}
            | {:array_value, Google.Firestore.V1.ArrayValue.t() | nil}
            | {:map_value, Google.Firestore.V1.MapValue.t() | nil}
        }

  defstruct value_type: nil

  oneof :value_type, 0

  field :null_value, 11,
    type: Google.Protobuf.NullValue,
    json_name: "nullValue",
    enum: true,
    oneof: 0

  field :boolean_value, 1, type: :bool, json_name: "booleanValue", oneof: 0
  field :integer_value, 2, type: :int64, json_name: "integerValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0

  field :timestamp_value, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :string_value, 17, type: :string, json_name: "stringValue", oneof: 0
  field :bytes_value, 18, type: :bytes, json_name: "bytesValue", oneof: 0
  field :reference_value, 5, type: :string, json_name: "referenceValue", oneof: 0
  field :geo_point_value, 8, type: Google.Type.LatLng, json_name: "geoPointValue", oneof: 0
  field :array_value, 9, type: Google.Firestore.V1.ArrayValue, json_name: "arrayValue", oneof: 0
  field :map_value, 6, type: Google.Firestore.V1.MapValue, json_name: "mapValue", oneof: 0
end
defmodule Google.Firestore.V1.ArrayValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Firestore.V1.Value.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: Google.Firestore.V1.Value
end
defmodule Google.Firestore.V1.MapValue.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Firestore.V1.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Firestore.V1.Value
end
defmodule Google.Firestore.V1.MapValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: %{String.t() => Google.Firestore.V1.Value.t() | nil}
        }

  defstruct fields: %{}

  field :fields, 1, repeated: true, type: Google.Firestore.V1.MapValue.FieldsEntry, map: true
end
