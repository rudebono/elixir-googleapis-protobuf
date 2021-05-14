defmodule Google.Cloud.Datacatalog.V1beta1.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: [Google.Cloud.Datacatalog.V1beta1.ColumnSchema.t()]
        }

  defstruct [:columns]

  field :columns, 2, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.ColumnSchema
end

defmodule Google.Cloud.Datacatalog.V1beta1.ColumnSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column: String.t(),
          type: String.t(),
          description: String.t(),
          mode: String.t(),
          subcolumns: [Google.Cloud.Datacatalog.V1beta1.ColumnSchema.t()]
        }

  defstruct [:column, :type, :description, :mode, :subcolumns]

  field :column, 6, type: :string
  field :type, 1, type: :string
  field :description, 2, type: :string
  field :mode, 3, type: :string
  field :subcolumns, 7, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.ColumnSchema
end
