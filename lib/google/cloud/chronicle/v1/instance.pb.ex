defmodule Google.Cloud.Chronicle.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.InstanceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.chronicle.v1.InstanceService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetInstance,
      Google.Cloud.Chronicle.V1.GetInstanceRequest,
      Google.Cloud.Chronicle.V1.Instance
end

defmodule Google.Cloud.Chronicle.V1.InstanceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Chronicle.V1.InstanceService.Service
end
