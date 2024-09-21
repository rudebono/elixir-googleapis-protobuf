defmodule Google.Iam.Credentials.V1.IAMCredentials.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.iam.credentials.v1.IAMCredentials",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GenerateAccessToken,
      Google.Iam.Credentials.V1.GenerateAccessTokenRequest,
      Google.Iam.Credentials.V1.GenerateAccessTokenResponse

  rpc :GenerateIdToken,
      Google.Iam.Credentials.V1.GenerateIdTokenRequest,
      Google.Iam.Credentials.V1.GenerateIdTokenResponse

  rpc :SignBlob,
      Google.Iam.Credentials.V1.SignBlobRequest,
      Google.Iam.Credentials.V1.SignBlobResponse

  rpc :SignJwt,
      Google.Iam.Credentials.V1.SignJwtRequest,
      Google.Iam.Credentials.V1.SignJwtResponse
end

defmodule Google.Iam.Credentials.V1.IAMCredentials.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Iam.Credentials.V1.IAMCredentials.Service
end