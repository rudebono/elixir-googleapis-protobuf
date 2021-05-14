defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          uri: String.t()
        }

  defstruct [:parent, :uri]

  field :parent, 1, type: :string
  field :uri, 2, type: :string
end

defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.phishingprotection.v1beta1.PhishingProtectionServiceV1Beta1"

  rpc :ReportPhishing,
      Google.Cloud.Phishingprotection.V1beta1.ReportPhishingRequest,
      Google.Cloud.Phishingprotection.V1beta1.ReportPhishingResponse
end

defmodule Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Service
end
