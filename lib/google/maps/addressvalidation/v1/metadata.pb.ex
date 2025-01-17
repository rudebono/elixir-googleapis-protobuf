defmodule Google.Maps.Addressvalidation.V1.AddressMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :business, 2, proto3_optional: true, type: :bool
  field :po_box, 3, proto3_optional: true, type: :bool, json_name: "poBox"
  field :residential, 6, proto3_optional: true, type: :bool
end
