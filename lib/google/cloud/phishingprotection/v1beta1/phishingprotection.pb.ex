defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :uri, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.phishingprotection.v1beta1.PhishingProtectionServiceV1Beta1",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ReportPhishing,
      Google.Cloud.Phishingprotection.V1beta1.ReportPhishingRequest,
      Google.Cloud.Phishingprotection.V1beta1.ReportPhishingResponse
end

defmodule Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Phishingprotection.V1beta1.PhishingProtectionServiceV1Beta1.Service
end