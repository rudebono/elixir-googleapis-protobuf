defmodule Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_uri: String.t()
        }

  defstruct [:target_uri]

  field :target_uri, 1, type: :string, json_name: "targetUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.ValidationCA do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:grpc_endpoint, Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint.t() | nil}
            | {:certificate_provider_instance,
               Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plugin_instance: String.t()
        }

  defstruct [:plugin_instance]

  field :plugin_instance, 1, type: :string, json_name: "pluginInstance"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:grpc_endpoint, Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint.t() | nil}
            | {:certificate_provider_instance,
               Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance.t() | nil}
        }

  defstruct [:type]

  oneof :type, 0

  field :grpc_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint,
    json_name: "grpcEndpoint",
    oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    json_name: "certificateProviderInstance",
    oneof: 0

  def transform_module(), do: nil
end
