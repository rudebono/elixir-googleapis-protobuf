defmodule Google.Cloud.Visionai.V1.HealthCheckRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1.HealthCheckResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :healthy, 1, type: :bool
  field :reason, 2, type: :string
  field :cluster_info, 3, type: Google.Cloud.Visionai.V1.ClusterInfo, json_name: "clusterInfo"
end

defmodule Google.Cloud.Visionai.V1.ClusterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :streams_count, 1, type: :int32, json_name: "streamsCount"
  field :processes_count, 2, type: :int32, json_name: "processesCount"
end

defmodule Google.Cloud.Visionai.V1.HealthCheckService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1.HealthCheckService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :HealthCheck,
      Google.Cloud.Visionai.V1.HealthCheckRequest,
      Google.Cloud.Visionai.V1.HealthCheckResponse
end

defmodule Google.Cloud.Visionai.V1.HealthCheckService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1.HealthCheckService.Service
end
