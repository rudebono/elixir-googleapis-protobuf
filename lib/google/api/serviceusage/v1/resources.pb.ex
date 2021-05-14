defmodule Google.Api.Serviceusage.V1.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :DISABLED | :ENABLED

  field :STATE_UNSPECIFIED, 0

  field :DISABLED, 1

  field :ENABLED, 2
end

defmodule Google.Api.Serviceusage.V1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          config: Google.Api.Serviceusage.V1.ServiceConfig.t() | nil,
          state: Google.Api.Serviceusage.V1.State.t()
        }

  defstruct [:name, :parent, :config, :state]

  field :name, 1, type: :string
  field :parent, 5, type: :string
  field :config, 2, type: Google.Api.Serviceusage.V1.ServiceConfig
  field :state, 4, type: Google.Api.Serviceusage.V1.State, enum: true
end

defmodule Google.Api.Serviceusage.V1.ServiceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          apis: [Google.Protobuf.Api.t()],
          documentation: Google.Api.Documentation.t() | nil,
          quota: Google.Api.Quota.t() | nil,
          authentication: Google.Api.Authentication.t() | nil,
          usage: Google.Api.Usage.t() | nil,
          endpoints: [Google.Api.Endpoint.t()],
          monitored_resources: [Google.Api.MonitoredResourceDescriptor.t()],
          monitoring: Google.Api.Monitoring.t() | nil
        }

  defstruct [
    :name,
    :title,
    :apis,
    :documentation,
    :quota,
    :authentication,
    :usage,
    :endpoints,
    :monitored_resources,
    :monitoring
  ]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :apis, 3, repeated: true, type: Google.Protobuf.Api
  field :documentation, 6, type: Google.Api.Documentation
  field :quota, 10, type: Google.Api.Quota
  field :authentication, 11, type: Google.Api.Authentication
  field :usage, 15, type: Google.Api.Usage
  field :endpoints, 18, repeated: true, type: Google.Api.Endpoint
  field :monitored_resources, 25, repeated: true, type: Google.Api.MonitoredResourceDescriptor
  field :monitoring, 28, type: Google.Api.Monitoring
end

defmodule Google.Api.Serviceusage.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct [:resource_names]

  field :resource_names, 2, repeated: true, type: :string
end
