defmodule Google.Ads.Admanager.V1.AdManagerError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_code, 1, type: :string, json_name: "errorCode"
  field :message, 2, type: :string
  field :field_path, 3, type: :string, json_name: "fieldPath"
  field :trigger, 4, type: :string
  field :stack_trace, 5, type: :string, json_name: "stackTrace"
  field :details, 6, repeated: true, type: Google.Protobuf.Any
end