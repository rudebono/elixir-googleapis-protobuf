defmodule Google.Api.Servicecontrol.V2.CheckRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :attributes, 3, type: Google.Rpc.Context.AttributeContext
  field :resources, 4, repeated: true, type: Google.Api.Servicecontrol.V2.ResourceInfo
  field :flags, 5, type: :string
end

defmodule Google.Api.Servicecontrol.V2.ResourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :permission, 3, type: :string
  field :container, 4, type: :string
  field :location, 5, type: :string
end

defmodule Google.Api.Servicecontrol.V2.CheckResponse.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Servicecontrol.V2.CheckResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status

  field :headers, 2,
    repeated: true,
    type: Google.Api.Servicecontrol.V2.CheckResponse.HeadersEntry,
    map: true
end

defmodule Google.Api.Servicecontrol.V2.ReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :operations, 3, repeated: true, type: Google.Rpc.Context.AttributeContext
end

defmodule Google.Api.Servicecontrol.V2.ReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Api.Servicecontrol.V2.ResourceInfoList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Api.Servicecontrol.V2.ResourceInfo
end

defmodule Google.Api.Servicecontrol.V2.ServiceController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.api.servicecontrol.v2.ServiceController",
    protoc_gen_elixir_version: "0.14.0"

  rpc :Check,
      Google.Api.Servicecontrol.V2.CheckRequest,
      Google.Api.Servicecontrol.V2.CheckResponse

  rpc :Report,
      Google.Api.Servicecontrol.V2.ReportRequest,
      Google.Api.Servicecontrol.V2.ReportResponse
end

defmodule Google.Api.Servicecontrol.V2.ServiceController.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Api.Servicecontrol.V2.ServiceController.Service
end
