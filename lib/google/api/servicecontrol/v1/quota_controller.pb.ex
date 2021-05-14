defmodule Google.Api.Servicecontrol.V1.QuotaOperation.QuotaMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :NORMAL
          | :BEST_EFFORT
          | :CHECK_ONLY
          | :QUERY_ONLY
          | :ADJUST_ONLY

  field :UNSPECIFIED, 0

  field :NORMAL, 1

  field :BEST_EFFORT, 2

  field :CHECK_ONLY, 3

  field :QUERY_ONLY, 4

  field :ADJUST_ONLY, 5
end

defmodule Google.Api.Servicecontrol.V1.QuotaError.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :RESOURCE_EXHAUSTED
          | :BILLING_NOT_ACTIVE
          | :PROJECT_DELETED
          | :API_KEY_INVALID
          | :API_KEY_EXPIRED

  field :UNSPECIFIED, 0

  field :RESOURCE_EXHAUSTED, 8

  field :BILLING_NOT_ACTIVE, 107

  field :PROJECT_DELETED, 108

  field :API_KEY_INVALID, 105

  field :API_KEY_EXPIRED, 112
end

defmodule Google.Api.Servicecontrol.V1.AllocateQuotaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          allocate_operation: Google.Api.Servicecontrol.V1.QuotaOperation.t() | nil,
          service_config_id: String.t()
        }

  defstruct [:service_name, :allocate_operation, :service_config_id]

  field :service_name, 1, type: :string
  field :allocate_operation, 2, type: Google.Api.Servicecontrol.V1.QuotaOperation
  field :service_config_id, 4, type: :string
end

defmodule Google.Api.Servicecontrol.V1.QuotaOperation.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Servicecontrol.V1.QuotaOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          method_name: String.t(),
          consumer_id: String.t(),
          labels: %{String.t() => String.t()},
          quota_metrics: [Google.Api.Servicecontrol.V1.MetricValueSet.t()],
          quota_mode: Google.Api.Servicecontrol.V1.QuotaOperation.QuotaMode.t()
        }

  defstruct [:operation_id, :method_name, :consumer_id, :labels, :quota_metrics, :quota_mode]

  field :operation_id, 1, type: :string
  field :method_name, 2, type: :string
  field :consumer_id, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.QuotaOperation.LabelsEntry,
    map: true

  field :quota_metrics, 5, repeated: true, type: Google.Api.Servicecontrol.V1.MetricValueSet
  field :quota_mode, 6, type: Google.Api.Servicecontrol.V1.QuotaOperation.QuotaMode, enum: true
end

defmodule Google.Api.Servicecontrol.V1.AllocateQuotaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_id: String.t(),
          allocate_errors: [Google.Api.Servicecontrol.V1.QuotaError.t()],
          quota_metrics: [Google.Api.Servicecontrol.V1.MetricValueSet.t()],
          service_config_id: String.t()
        }

  defstruct [:operation_id, :allocate_errors, :quota_metrics, :service_config_id]

  field :operation_id, 1, type: :string
  field :allocate_errors, 2, repeated: true, type: Google.Api.Servicecontrol.V1.QuotaError
  field :quota_metrics, 3, repeated: true, type: Google.Api.Servicecontrol.V1.MetricValueSet
  field :service_config_id, 4, type: :string
end

defmodule Google.Api.Servicecontrol.V1.QuotaError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Api.Servicecontrol.V1.QuotaError.Code.t(),
          subject: String.t(),
          description: String.t()
        }

  defstruct [:code, :subject, :description]

  field :code, 1, type: Google.Api.Servicecontrol.V1.QuotaError.Code, enum: true
  field :subject, 2, type: :string
  field :description, 3, type: :string
end

defmodule Google.Api.Servicecontrol.V1.QuotaController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.servicecontrol.v1.QuotaController"

  rpc :AllocateQuota,
      Google.Api.Servicecontrol.V1.AllocateQuotaRequest,
      Google.Api.Servicecontrol.V1.AllocateQuotaResponse
end

defmodule Google.Api.Servicecontrol.V1.QuotaController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Servicecontrol.V1.QuotaController.Service
end
