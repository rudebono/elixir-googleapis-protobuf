defmodule Google.Cloud.Datacatalog.V1.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: [Google.Cloud.Datacatalog.V1.ColumnSchema.t()]
        }

  defstruct columns: []

  field :columns, 2, repeated: true, type: Google.Cloud.Datacatalog.V1.ColumnSchema
end
defmodule Google.Cloud.Datacatalog.V1.ColumnSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column: String.t(),
          type: String.t(),
          description: String.t(),
          mode: String.t(),
          subcolumns: [Google.Cloud.Datacatalog.V1.ColumnSchema.t()]
        }

  defstruct column: "",
            type: "",
            description: "",
            mode: "",
            subcolumns: []

  field :column, 6, type: :string, deprecated: false
  field :type, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :mode, 3, type: :string, deprecated: false

  field :subcolumns, 7,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.ColumnSchema,
    deprecated: false
end
