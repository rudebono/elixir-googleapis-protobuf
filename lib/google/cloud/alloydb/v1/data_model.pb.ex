defmodule Google.Cloud.Alloydb.V1.SqlResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Cloud.Alloydb.V1.SqlResultColumn
  field :rows, 2, repeated: true, type: Google.Cloud.Alloydb.V1.SqlResultRow
end

defmodule Google.Cloud.Alloydb.V1.SqlResultColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1.SqlResultRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Alloydb.V1.SqlResultValue
end

defmodule Google.Cloud.Alloydb.V1.SqlResultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
  field :null_value, 2, proto3_optional: true, type: :bool, json_name: "nullValue"
end
