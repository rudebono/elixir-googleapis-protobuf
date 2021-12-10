defmodule Google.Cloud.Aiplatform.V1.DeployedModelRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model_id: String.t()
        }

  defstruct endpoint: "",
            deployed_model_id: ""

  field :endpoint, 1, type: :string, deprecated: false
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId", deprecated: false
end
