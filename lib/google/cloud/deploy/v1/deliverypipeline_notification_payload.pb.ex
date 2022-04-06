defmodule Google.Cloud.Deploy.V1.DeliveryPipelineNotificationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          delivery_pipeline: String.t(),
          type: Google.Cloud.Deploy.V1.Type.t()
        }

  defstruct message: "",
            delivery_pipeline: "",
            type: :TYPE_UNSPECIFIED

  field :message, 1, type: :string
  field :delivery_pipeline, 2, type: :string, json_name: "deliveryPipeline"
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end
