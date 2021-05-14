defmodule Google.Cloud.Servicedirectory.V1.ResolveServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          max_endpoints: integer,
          endpoint_filter: String.t()
        }

  defstruct [:name, :max_endpoints, :endpoint_filter]

  field :name, 1, type: :string
  field :max_endpoints, 2, type: :int32
  field :endpoint_filter, 3, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1.ResolveServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Cloud.Servicedirectory.V1.Service.t() | nil
        }

  defstruct [:service]

  field :service, 1, type: Google.Cloud.Servicedirectory.V1.Service
end
