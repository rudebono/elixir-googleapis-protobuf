defmodule Google.Cloud.Servicedirectory.V1.ResolveServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :max_endpoints, 2, type: :int32, json_name: "maxEndpoints", deprecated: false
  field :endpoint_filter, 3, type: :string, json_name: "endpointFilter", deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ResolveServiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service, 1, type: Google.Cloud.Servicedirectory.V1.Service
end

defmodule Google.Cloud.Servicedirectory.V1.LookupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.servicedirectory.v1.LookupService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ResolveService,
      Google.Cloud.Servicedirectory.V1.ResolveServiceRequest,
      Google.Cloud.Servicedirectory.V1.ResolveServiceResponse
end

defmodule Google.Cloud.Servicedirectory.V1.LookupService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Servicedirectory.V1.LookupService.Service
end
