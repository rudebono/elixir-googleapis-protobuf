defmodule Google.Api.Serviceusage.V1.DisableServiceRequest.CheckIfServiceHasUsage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED | :SKIP | :CHECK

  field :CHECK_IF_SERVICE_HAS_USAGE_UNSPECIFIED, 0

  field :SKIP, 1

  field :CHECK, 2
end

defmodule Google.Api.Serviceusage.V1.EnableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1.EnableServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Serviceusage.V1.Service.t() | nil
        }

  defstruct [:service]

  field :service, 1, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.DisableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          disable_dependent_services: boolean,
          check_if_service_has_usage:
            Google.Api.Serviceusage.V1.DisableServiceRequest.CheckIfServiceHasUsage.t()
        }

  defstruct [:name, :disable_dependent_services, :check_if_service_has_usage]

  field :name, 1, type: :string
  field :disable_dependent_services, 2, type: :bool

  field :check_if_service_has_usage, 3,
    type: Google.Api.Serviceusage.V1.DisableServiceRequest.CheckIfServiceHasUsage,
    enum: true
end

defmodule Google.Api.Serviceusage.V1.DisableServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Serviceusage.V1.Service.t() | nil
        }

  defstruct [:service]

  field :service, 1, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Api.Serviceusage.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Serviceusage.V1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_ids: [String.t()]
        }

  defstruct [:parent, :service_ids]

  field :parent, 1, type: :string
  field :service_ids, 2, repeated: true, type: :string
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesResponse.EnableFailure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_id: String.t(),
          error_message: String.t()
        }

  defstruct [:service_id, :error_message]

  field :service_id, 1, type: :string
  field :error_message, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1.BatchEnableServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Serviceusage.V1.Service.t()],
          failures: [Google.Api.Serviceusage.V1.BatchEnableServicesResponse.EnableFailure.t()]
        }

  defstruct [:services, :failures]

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service

  field :failures, 2,
    repeated: true,
    type: Google.Api.Serviceusage.V1.BatchEnableServicesResponse.EnableFailure
end

defmodule Google.Api.Serviceusage.V1.BatchGetServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct [:parent, :names]

  field :parent, 1, type: :string
  field :names, 2, repeated: true, type: :string
end

defmodule Google.Api.Serviceusage.V1.BatchGetServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Serviceusage.V1.Service.t()]
        }

  defstruct [:services]

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1.Service
end

defmodule Google.Api.Serviceusage.V1.ServiceUsage.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.serviceusage.v1.ServiceUsage"

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
