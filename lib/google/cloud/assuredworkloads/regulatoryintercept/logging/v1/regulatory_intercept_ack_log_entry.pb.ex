defmodule Google.Cloud.Assuredworkloads.Regulatoryintercept.Logging.V1.RegulatoryInterceptAckLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          assured_workload_resource_id: String.t()
        }

  defstruct user_id: "",
            assured_workload_resource_id: ""

  field :user_id, 1, type: :string, json_name: "userId"
  field :assured_workload_resource_id, 2, type: :string, json_name: "assuredWorkloadResourceId"
end
