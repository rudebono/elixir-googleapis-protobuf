defmodule Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.ConsumerType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONSUMER_TYPE_UNSPECIFIED
          | :PROJECT
          | :FOLDER
          | :ORGANIZATION
          | :SERVICE_SPECIFIC

  field :CONSUMER_TYPE_UNSPECIFIED, 0
  field :PROJECT, 1
  field :FOLDER, 2
  field :ORGANIZATION, 3
  field :SERVICE_SPECIFIC, 4
end

defmodule Google.Api.Servicecontrol.V1.CheckRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          operation: Google.Api.Servicecontrol.V1.Operation.t() | nil,
          service_config_id: String.t()
        }

  defstruct [:service_name, :operation, :service_config_id]

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :operation, 2, type: Google.Api.Servicecontrol.V1.Operation
  field :service_config_id, 4, type: :string, json_name: "serviceConfigId"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse.CheckInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unused_arguments: [String.t()],
          consumer_info: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.t() | nil
        }

  defstruct [:unused_arguments, :consumer_info]

  field :unused_arguments, 1, repeated: true, type: :string, json_name: "unusedArguments"

  field :consumer_info, 2,
    type: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo,
    json_name: "consumerInfo"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_number: integer,
          type: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.ConsumerType.t(),
          consumer_number: integer
        }

  defstruct [:project_number, :type, :consumer_number]

  field :project_number, 1, type: :int64, json_name: "projectNumber"

  field :type, 2,
    type: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.ConsumerType,
    enum: true

  field :consumer_number, 3, type: :int64, json_name: "consumerNumber"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          check_errors: [Google.Api.Servicecontrol.V1.CheckError.t()],
          service_config_id: String.t(),
          service_rollout_id: String.t(),
          check_info: Google.Api.Servicecontrol.V1.CheckResponse.CheckInfo.t() | nil
        }

  defstruct [:operation_id, :check_errors, :service_config_id, :service_rollout_id, :check_info]

  field :operation_id, 1, type: :string, json_name: "operationId"

  field :check_errors, 2,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.CheckError,
    json_name: "checkErrors"

  field :service_config_id, 5, type: :string, json_name: "serviceConfigId"
  field :service_rollout_id, 11, type: :string, json_name: "serviceRolloutId"

  field :check_info, 6,
    type: Google.Api.Servicecontrol.V1.CheckResponse.CheckInfo,
    json_name: "checkInfo"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.ReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          operations: [Google.Api.Servicecontrol.V1.Operation.t()],
          service_config_id: String.t()
        }

  defstruct [:service_name, :operations, :service_config_id]

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :operations, 2, repeated: true, type: Google.Api.Servicecontrol.V1.Operation
  field :service_config_id, 3, type: :string, json_name: "serviceConfigId"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.ReportResponse.ReportError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:operation_id, :status]

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :status, 2, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.ReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          report_errors: [Google.Api.Servicecontrol.V1.ReportResponse.ReportError.t()],
          service_config_id: String.t(),
          service_rollout_id: String.t()
        }

  defstruct [:report_errors, :service_config_id, :service_rollout_id]

  field :report_errors, 1,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.ReportResponse.ReportError,
    json_name: "reportErrors"

  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :service_rollout_id, 4, type: :string, json_name: "serviceRolloutId"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicecontrol.V1.ServiceController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.servicecontrol.v1.ServiceController"

  rpc :Check,
      Google.Api.Servicecontrol.V1.CheckRequest,
      Google.Api.Servicecontrol.V1.CheckResponse

  rpc :Report,
      Google.Api.Servicecontrol.V1.ReportRequest,
      Google.Api.Servicecontrol.V1.ReportResponse
end

defmodule Google.Api.Servicecontrol.V1.ServiceController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Servicecontrol.V1.ServiceController.Service
end
