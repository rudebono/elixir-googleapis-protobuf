defmodule Google.Maps.Addressvalidation.V1.AddressMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :highrise, 1, proto3_optional: true, type: :bool
  field :business, 2, proto3_optional: true, type: :bool
  field :po_box, 3, proto3_optional: true, type: :bool, json_name: "poBox"
  field :multi_family, 4, proto3_optional: true, type: :bool, json_name: "multiFamily"
  field :residential, 6, proto3_optional: true, type: :bool
end