defmodule Google.Cloud.Aiplatform.V1beta1.DeployedIndexRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index_id: String.t()
        }

  defstruct [:index_endpoint, :deployed_index_id]

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint"
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"

  def transform_module(), do: nil
end
