defmodule Google.Cloud.Deploy.V1.DeliveryPipelineNotificationEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
  field :delivery_pipeline, 2, type: :string, json_name: "deliveryPipeline"
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end