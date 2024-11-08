defmodule Google.Cloud.Alloydb.V1alpha.SqlResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.SqlResultColumn
  field :rows, 2, repeated: true, type: Google.Cloud.Alloydb.V1alpha.SqlResultRow
end

defmodule Google.Cloud.Alloydb.V1alpha.SqlResultColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1alpha.SqlResultRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Alloydb.V1alpha.SqlResultValue
end

defmodule Google.Cloud.Alloydb.V1alpha.SqlResultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
  field :null_value, 2, proto3_optional: true, type: :bool, json_name: "nullValue"
end