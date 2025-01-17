defmodule Google.Ads.Admanager.V1.CustomFieldValue.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :value, 0

  field :dropdown_value, 1, type: :int64, json_name: "dropdownValue", oneof: 0
  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0
  field :number_value, 3, type: :double, json_name: "numberValue", oneof: 0
  field :toggle_value, 4, type: :bool, json_name: "toggleValue", oneof: 0
end

defmodule Google.Ads.Admanager.V1.CustomFieldValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_field, 1, type: :string, json_name: "customField", deprecated: false

  field :value, 2,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CustomFieldValue.Value,
    deprecated: false
end
