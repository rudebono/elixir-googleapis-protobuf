defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsRequest.OperatingSystem do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATING_SYSTEM_UNSPECIFIED, 0
  field :OPERATING_SYSTEM_WINDOWS, 1
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force_use_agent, 2, type: :bool, json_name: "forceUseAgent", deprecated: false
  field :version, 3, type: :string, deprecated: false

  field :kubernetes_namespace, 4,
    type: :string,
    json_name: "kubernetesNamespace",
    deprecated: false

  field :operating_system, 5,
    type: Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsRequest.OperatingSystem,
    json_name: "operatingSystem",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kubeconfig, 1, type: :bytes
  field :endpoint, 2, type: :string
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayControl.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gkeconnect.gateway.v1beta1.GatewayControl",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateCredentials,
      Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsRequest,
      Google.Cloud.Gkeconnect.Gateway.V1beta1.GenerateCredentialsResponse
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayControl.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayControl.Service
end
