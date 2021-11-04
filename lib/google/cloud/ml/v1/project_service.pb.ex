defmodule Google.Cloud.Ml.V1.GetConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Ml.V1.GetConfigResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account: String.t(),
          service_account_project: integer
        }

  defstruct [:service_account, :service_account_project]

  field :service_account, 1, type: :string, json_name: "serviceAccount"
  field :service_account_project, 2, type: :int64, json_name: "serviceAccountProject"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Ml.V1.ProjectManagementService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ml.v1.ProjectManagementService"

  rpc :GetConfig, Google.Cloud.Ml.V1.GetConfigRequest, Google.Cloud.Ml.V1.GetConfigResponse
end

defmodule Google.Cloud.Ml.V1.ProjectManagementService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ml.V1.ProjectManagementService.Service
end
