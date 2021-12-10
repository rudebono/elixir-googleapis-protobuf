defmodule Google.Cloud.Servicedirectory.V1beta1.ResolveServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          max_endpoints: integer,
          endpoint_filter: String.t()
        }

  defstruct name: "",
            max_endpoints: 0,
            endpoint_filter: ""

  field :name, 1, type: :string, deprecated: false
  field :max_endpoints, 2, type: :int32, json_name: "maxEndpoints", deprecated: false
  field :endpoint_filter, 3, type: :string, json_name: "endpointFilter", deprecated: false
end
defmodule Google.Cloud.Servicedirectory.V1beta1.ResolveServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Cloud.Servicedirectory.V1beta1.Service.t() | nil
        }

  defstruct service: nil

  field :service, 1, type: Google.Cloud.Servicedirectory.V1beta1.Service
end
defmodule Google.Cloud.Servicedirectory.V1beta1.LookupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.servicedirectory.v1beta1.LookupService"

  rpc :ResolveService,
      Google.Cloud.Servicedirectory.V1beta1.ResolveServiceRequest,
      Google.Cloud.Servicedirectory.V1beta1.ResolveServiceResponse
end

defmodule Google.Cloud.Servicedirectory.V1beta1.LookupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Servicedirectory.V1beta1.LookupService.Service
end
