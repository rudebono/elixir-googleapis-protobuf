defmodule Google.Datastore.V1beta3.PartitionId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          namespace_id: String.t()
        }

  defstruct [:project_id, :namespace_id]

  field :project_id, 2, type: :string
  field :namespace_id, 4, type: :string
end

defmodule Google.Datastore.V1beta3.Key.PathElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id_type: {atom, any},
          kind: String.t()
        }

  defstruct [:id_type, :kind]

  oneof :id_type, 0
  field :kind, 1, type: :string
  field :id, 2, type: :int64, oneof: 0
  field :name, 3, type: :string, oneof: 0
end

defmodule Google.Datastore.V1beta3.Key do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_id: Google.Datastore.V1beta3.PartitionId.t() | nil,
          path: [Google.Datastore.V1beta3.Key.PathElement.t()]
        }

  defstruct [:partition_id, :path]

  field :partition_id, 1, type: Google.Datastore.V1beta3.PartitionId
  field :path, 2, repeated: true, type: Google.Datastore.V1beta3.Key.PathElement
end

defmodule Google.Datastore.V1beta3.ArrayValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Datastore.V1beta3.Value.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: Google.Datastore.V1beta3.Value
end

defmodule Google.Datastore.V1beta3.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_type: {atom, any},
          meaning: integer,
          exclude_from_indexes: boolean
        }

  defstruct [:value_type, :meaning, :exclude_from_indexes]

  oneof :value_type, 0
  field :null_value, 11, type: Google.Protobuf.NullValue, enum: true, oneof: 0
  field :boolean_value, 1, type: :bool, oneof: 0
  field :integer_value, 2, type: :int64, oneof: 0
  field :double_value, 3, type: :double, oneof: 0
  field :timestamp_value, 10, type: Google.Protobuf.Timestamp, oneof: 0
  field :key_value, 5, type: Google.Datastore.V1beta3.Key, oneof: 0
  field :string_value, 17, type: :string, oneof: 0
  field :blob_value, 18, type: :bytes, oneof: 0
  field :geo_point_value, 8, type: Google.Type.LatLng, oneof: 0
  field :entity_value, 6, type: Google.Datastore.V1beta3.Entity, oneof: 0
  field :array_value, 9, type: Google.Datastore.V1beta3.ArrayValue, oneof: 0
  field :meaning, 14, type: :int32
  field :exclude_from_indexes, 19, type: :bool
end

defmodule Google.Datastore.V1beta3.Entity.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Datastore.V1beta3.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Datastore.V1beta3.Value
end

defmodule Google.Datastore.V1beta3.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Datastore.V1beta3.Key.t() | nil,
          properties: %{String.t() => Google.Datastore.V1beta3.Value.t() | nil}
        }

  defstruct [:key, :properties]

  field :key, 1, type: Google.Datastore.V1beta3.Key

  field :properties, 3,
    repeated: true,
    type: Google.Datastore.V1beta3.Entity.PropertiesEntry,
    map: true
end
