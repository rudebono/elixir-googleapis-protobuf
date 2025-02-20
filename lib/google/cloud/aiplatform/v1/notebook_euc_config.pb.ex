defmodule Google.Cloud.Aiplatform.V1.NotebookEucConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :euc_disabled, 1, type: :bool, json_name: "eucDisabled", deprecated: false
  field :bypass_actas_check, 2, type: :bool, json_name: "bypassActasCheck", deprecated: false
end
