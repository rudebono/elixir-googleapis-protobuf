defmodule Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.ConsumerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSUMER_TYPE_UNSPECIFIED, 0
  field :PROJECT, 1
  field :FOLDER, 2
  field :ORGANIZATION, 3
  field :SERVICE_SPECIFIC, 4
end

defmodule Google.Api.Servicecontrol.V1.CheckRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :operation, 2, type: Google.Api.Servicecontrol.V1.Operation
  field :service_config_id, 4, type: :string, json_name: "serviceConfigId"
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse.CheckInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unused_arguments, 1, repeated: true, type: :string, json_name: "unusedArguments"

  field :consumer_info, 2,
    type: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo,
    json_name: "consumerInfo"

  field :api_key_uid, 5, type: :string, json_name: "apiKeyUid"
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_number, 1, type: :int64, json_name: "projectNumber"

  field :type, 2,
    type: Google.Api.Servicecontrol.V1.CheckResponse.ConsumerInfo.ConsumerType,
    enum: true

  field :consumer_number, 3, type: :int64, json_name: "consumerNumber"
end

defmodule Google.Api.Servicecontrol.V1.CheckResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Api.Servicecontrol.V1.ReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :operations, 2, repeated: true, type: Google.Api.Servicecontrol.V1.Operation
  field :service_config_id, 3, type: :string, json_name: "serviceConfigId"
end

defmodule Google.Api.Servicecontrol.V1.ReportResponse.ReportError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Api.Servicecontrol.V1.ReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :report_errors, 1,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.ReportResponse.ReportError,
    json_name: "reportErrors"

  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :service_rollout_id, 4, type: :string, json_name: "serviceRolloutId"
end

defmodule Google.Api.Servicecontrol.V1.ServiceController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.api.servicecontrol.v1.ServiceController",
    protoc_gen_elixir_version: "0.15.0"

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
