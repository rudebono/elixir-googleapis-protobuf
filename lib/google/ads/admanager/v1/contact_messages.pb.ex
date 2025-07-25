defmodule Google.Ads.Admanager.V1.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :company_display_name, 19,
    proto3_optional: true,
    type: :string,
    json_name: "companyDisplayName",
    deprecated: false
end
