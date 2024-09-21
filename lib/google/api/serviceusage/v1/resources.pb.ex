defmodule Google.Api.Serviceusage.V1.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Api.Serviceusage.V1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :parent, 5, type: :string
  field :config, 2, type: Google.Api.Serviceusage.V1.ServiceConfig
  field :state, 4, type: Google.Api.Serviceusage.V1.State, enum: true
end

defmodule Google.Api.Serviceusage.V1.ServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :apis, 3, repeated: true, type: Google.Protobuf.Api
  field :documentation, 6, type: Google.Api.Documentation
  field :quota, 10, type: Google.Api.Quota
  field :authentication, 11, type: Google.Api.Authentication
  field :usage, 15, type: Google.Api.Usage
  field :endpoints, 18, repeated: true, type: Google.Api.Endpoint

  field :monitored_resources, 25,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "monitoredResources"

  field :monitoring, 28, type: Google.Api.Monitoring
end

defmodule Google.Api.Serviceusage.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_names, 2, repeated: true, type: :string, json_name: "resourceNames"
end