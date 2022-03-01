defmodule Google.Api.Servicecontrol.V2.CheckRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          service_config_id: String.t(),
          attributes: Google.Rpc.Context.AttributeContext.t() | nil,
          resources: [Google.Api.Servicecontrol.V2.ResourceInfo.t()],
          flags: String.t()
        }

  defstruct service_name: "",
            service_config_id: "",
            attributes: nil,
            resources: [],
            flags: ""

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :attributes, 3, type: Google.Rpc.Context.AttributeContext
  field :resources, 4, repeated: true, type: Google.Api.Servicecontrol.V2.ResourceInfo
  field :flags, 5, type: :string
end
defmodule Google.Api.Servicecontrol.V2.ResourceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          permission: String.t(),
          container: String.t(),
          location: String.t()
        }

  defstruct name: "",
            type: "",
            permission: "",
            container: "",
            location: ""

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :permission, 3, type: :string
  field :container, 4, type: :string
  field :location, 5, type: :string
end
defmodule Google.Api.Servicecontrol.V2.CheckResponse.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Servicecontrol.V2.CheckResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          headers: %{String.t() => String.t()}
        }

  defstruct status: nil,
            headers: %{}

  field :status, 1, type: Google.Rpc.Status

  field :headers, 2,
    repeated: true,
    type: Google.Api.Servicecontrol.V2.CheckResponse.HeadersEntry,
    map: true
end
defmodule Google.Api.Servicecontrol.V2.ReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          service_config_id: String.t(),
          operations: [Google.Rpc.Context.AttributeContext.t()]
        }

  defstruct service_name: "",
            service_config_id: "",
            operations: []

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :service_config_id, 2, type: :string, json_name: "serviceConfigId"
  field :operations, 3, repeated: true, type: Google.Rpc.Context.AttributeContext
end
defmodule Google.Api.Servicecontrol.V2.ReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Servicecontrol.V2.ServiceController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.servicecontrol.v2.ServiceController"

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
