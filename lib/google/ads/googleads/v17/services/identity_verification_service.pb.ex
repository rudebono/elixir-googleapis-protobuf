defmodule Google.Ads.Googleads.V17.Services.StartIdentityVerificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :verification_program, 2,
    type:
      Google.Ads.Googleads.V17.Enums.IdentityVerificationProgramEnum.IdentityVerificationProgram,
    json_name: "verificationProgram",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.GetIdentityVerificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.GetIdentityVerificationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :identity_verification, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.IdentityVerification,
    json_name: "identityVerification"
end

defmodule Google.Ads.Googleads.V17.Services.IdentityVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :verification_program, 1,
    type:
      Google.Ads.Googleads.V17.Enums.IdentityVerificationProgramEnum.IdentityVerificationProgram,
    json_name: "verificationProgram",
    enum: true

  field :identity_verification_requirement, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Services.IdentityVerificationRequirement,
    json_name: "identityVerificationRequirement"

  field :verification_progress, 3,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Services.IdentityVerificationProgress,
    json_name: "verificationProgress"
end

defmodule Google.Ads.Googleads.V17.Services.IdentityVerificationProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :program_status, 1,
    type:
      Google.Ads.Googleads.V17.Enums.IdentityVerificationProgramStatusEnum.IdentityVerificationProgramStatus,
    json_name: "programStatus",
    enum: true

  field :invitation_link_expiration_time, 2,
    type: :string,
    json_name: "invitationLinkExpirationTime"

  field :action_url, 3, type: :string, json_name: "actionUrl"
end

defmodule Google.Ads.Googleads.V17.Services.IdentityVerificationRequirement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :verification_start_deadline_time, 1,
    type: :string,
    json_name: "verificationStartDeadlineTime"

  field :verification_completion_deadline_time, 2,
    type: :string,
    json_name: "verificationCompletionDeadlineTime"
end

defmodule Google.Ads.Googleads.V17.Services.IdentityVerificationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.IdentityVerificationService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :StartIdentityVerification,
      Google.Ads.Googleads.V17.Services.StartIdentityVerificationRequest,
      Google.Protobuf.Empty

  rpc :GetIdentityVerification,
      Google.Ads.Googleads.V17.Services.GetIdentityVerificationRequest,
      Google.Ads.Googleads.V17.Services.GetIdentityVerificationResponse
end

defmodule Google.Ads.Googleads.V17.Services.IdentityVerificationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.IdentityVerificationService.Service
end