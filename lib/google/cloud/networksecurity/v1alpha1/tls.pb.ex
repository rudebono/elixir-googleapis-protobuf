defmodule Google.Cloud.Networksecurity.V1alpha1.GrpcEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_uri, 1, type: :string, json_name: "targetUri", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ValidationCA do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :ca_cert_path, 1, type: :string, json_name: "caCertPath", oneof: 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CertificateProviderInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :plugin_instance, 1, type: :string, json_name: "pluginInstance", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CertificateProvider.TlsCertificateFiles do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certificate_path, 1, type: :string, json_name: "certificatePath", deprecated: false
  field :private_key_path, 2, type: :string, json_name: "privateKeyPath", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CertificateProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :local_filepath, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.CertificateProvider.TlsCertificateFiles,
    json_name: "localFilepath",
    oneof: 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0
end
