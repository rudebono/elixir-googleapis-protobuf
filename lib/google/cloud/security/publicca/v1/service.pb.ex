defmodule Google.Cloud.Security.Publicca.V1.CreateExternalAccountKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :external_account_key, 2,
    type: Google.Cloud.Security.Publicca.V1.ExternalAccountKey,
    json_name: "externalAccountKey",
    deprecated: false
end

defmodule Google.Cloud.Security.Publicca.V1.PublicCertificateAuthorityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.security.publicca.v1.PublicCertificateAuthorityService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateExternalAccountKey,
      Google.Cloud.Security.Publicca.V1.CreateExternalAccountKeyRequest,
      Google.Cloud.Security.Publicca.V1.ExternalAccountKey
end

defmodule Google.Cloud.Security.Publicca.V1.PublicCertificateAuthorityService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Security.Publicca.V1.PublicCertificateAuthorityService.Service
end