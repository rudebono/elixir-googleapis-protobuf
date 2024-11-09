defmodule Google.Cloud.Alloydb.V1beta.SqlResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Cloud.Alloydb.V1beta.SqlResultColumn
  field :rows, 2, repeated: true, type: Google.Cloud.Alloydb.V1beta.SqlResultRow
end

defmodule Google.Cloud.Alloydb.V1beta.SqlResultColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Alloydb.V1beta.SqlResultRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Alloydb.V1beta.SqlResultValue
end

defmodule Google.Cloud.Alloydb.V1beta.SqlResultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :string
  field :null_value, 2, proto3_optional: true, type: :bool, json_name: "nullValue"
end