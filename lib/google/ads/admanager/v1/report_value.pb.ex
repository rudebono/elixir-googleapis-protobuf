defmodule Google.Ads.Admanager.V1.ReportValue.IntList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int64
end

defmodule Google.Ads.Admanager.V1.ReportValue.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Ads.Admanager.V1.ReportValue.DoubleList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double
end

defmodule Google.Ads.Admanager.V1.ReportValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :int_value, 1, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 3, type: :string, json_name: "stringValue", oneof: 0
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0

  field :int_list_value, 6,
    type: Google.Ads.Admanager.V1.ReportValue.IntList,
    json_name: "intListValue",
    oneof: 0

  field :string_list_value, 7,
    type: Google.Ads.Admanager.V1.ReportValue.StringList,
    json_name: "stringListValue",
    oneof: 0

  field :double_list_value, 9,
    type: Google.Ads.Admanager.V1.ReportValue.DoubleList,
    json_name: "doubleListValue",
    oneof: 0

  field :bytes_value, 8, type: :bytes, json_name: "bytesValue", oneof: 0
end
