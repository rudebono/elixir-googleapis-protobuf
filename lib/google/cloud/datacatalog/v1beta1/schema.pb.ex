defmodule Google.Cloud.Datacatalog.V1beta1.Schema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :columns, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.ColumnSchema,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1beta1.ColumnSchema do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :column, 6, type: :string, deprecated: false
  field :type, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :mode, 3, type: :string, deprecated: false

  field :subcolumns, 7,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.ColumnSchema,
    deprecated: false
end