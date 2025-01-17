defmodule Google.Cloud.Cloudcontrolspartner.V1beta.CompletionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COMPLETION_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :NOT_APPLICABLE, 4
end
