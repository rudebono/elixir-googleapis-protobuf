defmodule Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_uri: String.t()
        }

  defstruct [:target_uri]

  field :target_uri, 1, type: :string
end

defmodule Google.Cloud.Networksecurity.V1beta1.ValidationCA do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any}
        }

  defstruct [:type]

  oneof :type, 0
  field :grpc_endpoint, 2, type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint, oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    oneof: 0
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plugin_instance: String.t()
        }

  defstruct [:plugin_instance]

  field :plugin_instance, 1, type: :string
end

defmodule Google.Cloud.Networksecurity.V1beta1.CertificateProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any}
        }

  defstruct [:type]

  oneof :type, 0
  field :grpc_endpoint, 2, type: Google.Cloud.Networksecurity.V1beta1.GrpcEndpoint, oneof: 0

  field :certificate_provider_instance, 3,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProviderInstance,
    oneof: 0
end
