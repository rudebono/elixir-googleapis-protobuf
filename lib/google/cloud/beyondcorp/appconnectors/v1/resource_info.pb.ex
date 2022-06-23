defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.HealthStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HEALTH_STATUS_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :UNHEALTHY, 2
  field :UNRESPONSIVE, 3
  field :DEGRADED, 4
end
defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.ResourceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :status, 2, type: Google.Cloud.Beyondcorp.Appconnectors.V1.HealthStatus, enum: true
  field :resource, 3, type: Google.Protobuf.Any
  field :time, 4, type: Google.Protobuf.Timestamp
  field :sub, 5, repeated: true, type: Google.Cloud.Beyondcorp.Appconnectors.V1.ResourceInfo
end
