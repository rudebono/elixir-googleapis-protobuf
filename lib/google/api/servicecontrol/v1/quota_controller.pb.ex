defmodule Google.Api.Servicecontrol.V1.QuotaOperation.QuotaMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :NORMAL, 1
  field :BEST_EFFORT, 2
  field :CHECK_ONLY, 3
  field :QUERY_ONLY, 4
  field :ADJUST_ONLY, 5
end
defmodule Google.Api.Servicecontrol.V1.QuotaError.Code do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :RESOURCE_EXHAUSTED, 8
  field :BILLING_NOT_ACTIVE, 107
  field :PROJECT_DELETED, 108
  field :API_KEY_INVALID, 105
  field :API_KEY_EXPIRED, 112
end
defmodule Google.Api.Servicecontrol.V1.AllocateQuotaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"

  field :allocate_operation, 2,
    type: Google.Api.Servicecontrol.V1.QuotaOperation,
    json_name: "allocateOperation"

  field :service_config_id, 4, type: :string, json_name: "serviceConfigId"
end
defmodule Google.Api.Servicecontrol.V1.QuotaOperation.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Servicecontrol.V1.QuotaOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :method_name, 2, type: :string, json_name: "methodName"
  field :consumer_id, 3, type: :string, json_name: "consumerId"

  field :labels, 4,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.QuotaOperation.LabelsEntry,
    map: true

  field :quota_metrics, 5,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValueSet,
    json_name: "quotaMetrics"

  field :quota_mode, 6,
    type: Google.Api.Servicecontrol.V1.QuotaOperation.QuotaMode,
    json_name: "quotaMode",
    enum: true
end
defmodule Google.Api.Servicecontrol.V1.AllocateQuotaResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"

  field :allocate_errors, 2,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.QuotaError,
    json_name: "allocateErrors"

  field :quota_metrics, 3,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValueSet,
    json_name: "quotaMetrics"

  field :service_config_id, 4, type: :string, json_name: "serviceConfigId"
end
defmodule Google.Api.Servicecontrol.V1.QuotaError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :code, 1, type: Google.Api.Servicecontrol.V1.QuotaError.Code, enum: true
  field :subject, 2, type: :string
  field :description, 3, type: :string
  field :status, 4, type: Google.Rpc.Status
end
defmodule Google.Api.Servicecontrol.V1.QuotaController.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.api.servicecontrol.v1.QuotaController",
    protoc_gen_elixir_version: "0.10.0"

  rpc :AllocateQuota,
      Google.Api.Servicecontrol.V1.AllocateQuotaRequest,
      Google.Api.Servicecontrol.V1.AllocateQuotaResponse
end

defmodule Google.Api.Servicecontrol.V1.QuotaController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Servicecontrol.V1.QuotaController.Service
end
