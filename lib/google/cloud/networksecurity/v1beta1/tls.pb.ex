defmodule Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.ValidationCA do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugin_instance, 1, type: :string, json_name: "pluginInstance", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0
end
