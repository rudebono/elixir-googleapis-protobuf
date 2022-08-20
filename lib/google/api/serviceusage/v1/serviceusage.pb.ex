defmodule Google.Api.Serviceusage.V1.DisableServiceRequest.CheckIfServiceHasUsage do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED, 0
  field :SKIP, 1
  field :CHECK, 2
end

defmodule Google.Api.Serviceusage.V1.EnableServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1.EnableServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 1, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.DisableServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :disable_dependent_services, 2, type: :bool, json_name: "disableDependentServices"

  field :check_if_service_has_usage, 3,
    type: Google.Api.Serviceusage.V1.DisableServiceRequest.CheckIfServiceHasUsage,
    json_name: "checkIfServiceHasUsage",
    enum: true
end

defmodule Google.Api.Serviceusage.V1.DisableServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 1, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Api.Serviceusage.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :service_ids, 2, repeated: true, type: :string, json_name: "serviceIds"
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesResponse.EnableFailure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_id, 1, type: :string, json_name: "serviceId"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service

  field :failures, 2,
    repeated: true,
    type: Google.Api.Serviceusage.V1.BatchEnableServicesResponse.EnableFailure
end

defmodule Google.Api.Serviceusage.V1.BatchGetServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :names, 2, repeated: true, type: :string
end

defmodule Google.Api.Serviceusage.V1.BatchGetServicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.ServiceUsage.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.api.serviceusage.v1.ServiceUsage",
    protoc_gen_elixir_version: "0.11.0"

  rpc :EnableService,
      Google.Api.Serviceusage.V1.EnableServiceRequest,
      Google.Longrunning.Operation

  rpc :DisableService,
      Google.Api.Serviceusage.V1.DisableServiceRequest,
      Google.Longrunning.Operation

  rpc :GetService,
      Google.Api.Serviceusage.V1.GetServiceRequest,
      Google.Api.Serviceusage.V1.Service

  rpc :ListServices,
      Google.Api.Serviceusage.V1.ListServicesRequest,
      Google.Api.Serviceusage.V1.ListServicesResponse

  rpc :BatchEnableServices,
      Google.Api.Serviceusage.V1.BatchEnableServicesRequest,
      Google.Longrunning.Operation

  rpc :BatchGetServices,
      Google.Api.Serviceusage.V1.BatchGetServicesRequest,
      Google.Api.Serviceusage.V1.BatchGetServicesResponse
end

defmodule Google.Api.Serviceusage.V1.ServiceUsage.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Serviceusage.V1.ServiceUsage.Service
end