defmodule Google.Cloud.Aiplatform.V1beta1.NotebookIdleShutdownConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :idle_timeout, 1,
    type: Google.Protobuf.Duration,
    json_name: "idleTimeout",
    deprecated: false

  field :idle_shutdown_disabled, 2, type: :bool, json_name: "idleShutdownDisabled"
end