defmodule Google.Cloud.Universalledger.V1.NoneValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NONE_VALUE_UNSPECIFIED, 0
end

defmodule Google.Cloud.Universalledger.V1.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.CurrencyValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :int64, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Int64List do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :int64, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.BoolList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, repeated: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.DictList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.DictValue,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.DictValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :keys, 0

  oneof :values, 1

  field :bool_keys, 1,
    type: Google.Cloud.Universalledger.V1.BoolList,
    json_name: "boolKeys",
    oneof: 0,
    deprecated: false

  field :string_keys, 2,
    type: Google.Cloud.Universalledger.V1.StringList,
    json_name: "stringKeys",
    oneof: 0,
    deprecated: false

  field :int64_keys, 3,
    type: Google.Cloud.Universalledger.V1.Int64List,
    json_name: "int64Keys",
    oneof: 0,
    deprecated: false

  field :bool_values, 4,
    type: Google.Cloud.Universalledger.V1.BoolList,
    json_name: "boolValues",
    oneof: 1,
    deprecated: false

  field :string_values, 5,
    type: Google.Cloud.Universalledger.V1.StringList,
    json_name: "stringValues",
    oneof: 1,
    deprecated: false

  field :int64_values, 6,
    type: Google.Cloud.Universalledger.V1.Int64List,
    json_name: "int64Values",
    oneof: 1,
    deprecated: false

  field :dict_values, 7,
    type: Google.Cloud.Universalledger.V1.DictList,
    json_name: "dictValues",
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :none_value, 1,
    type: Google.Cloud.Universalledger.V1.NoneValue,
    json_name: "noneValue",
    enum: true,
    oneof: 0,
    deprecated: false

  field :bool_value, 2, type: :bool, json_name: "boolValue", oneof: 0, deprecated: false
  field :int64_value, 3, type: :int64, json_name: "int64Value", oneof: 0, deprecated: false
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0, deprecated: false
  field :account_id, 5, type: :string, json_name: "accountId", oneof: 0, deprecated: false

  field :dict_value, 6,
    type: Google.Cloud.Universalledger.V1.DictValue,
    json_name: "dictValue",
    oneof: 0,
    deprecated: false
end
