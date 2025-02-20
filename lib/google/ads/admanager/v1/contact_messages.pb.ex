defmodule Google.Ads.Admanager.V1.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :contact_id, 2, type: :int64, json_name: "contactId", deprecated: false
end
