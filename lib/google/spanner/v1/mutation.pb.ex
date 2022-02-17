defmodule Google.Spanner.V1.Mutation.Write do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: String.t(),
          columns: [String.t()],
          values: [Google.Protobuf.ListValue.t()]
        }

  defstruct table: "",
            columns: [],
            values: []

  field :table, 1, type: :string, deprecated: false
  field :columns, 2, repeated: true, type: :string
  field :values, 3, repeated: true, type: Google.Protobuf.ListValue
end
defmodule Google.Spanner.V1.Mutation.Delete do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: String.t(),
          key_set: Google.Spanner.V1.KeySet.t() | nil
        }

  defstruct table: "",
            key_set: nil

  field :table, 1, type: :string, deprecated: false
  field :key_set, 2, type: Google.Spanner.V1.KeySet, json_name: "keySet", deprecated: false
end
defmodule Google.Spanner.V1.Mutation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:insert, Google.Spanner.V1.Mutation.Write.t() | nil}
            | {:update, Google.Spanner.V1.Mutation.Write.t() | nil}
            | {:insert_or_update, Google.Spanner.V1.Mutation.Write.t() | nil}
            | {:replace, Google.Spanner.V1.Mutation.Write.t() | nil}
            | {:delete, Google.Spanner.V1.Mutation.Delete.t() | nil}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :insert, 1, type: Google.Spanner.V1.Mutation.Write, oneof: 0
  field :update, 2, type: Google.Spanner.V1.Mutation.Write, oneof: 0

  field :insert_or_update, 3,
    type: Google.Spanner.V1.Mutation.Write,
    json_name: "insertOrUpdate",
    oneof: 0

  field :replace, 4, type: Google.Spanner.V1.Mutation.Write, oneof: 0
  field :delete, 5, type: Google.Spanner.V1.Mutation.Delete, oneof: 0
end
