defmodule Google.Cloud.Osconfig.V1beta.OsConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.osconfig.v1beta.OsConfigService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ExecutePatchJob,
      Google.Cloud.Osconfig.V1beta.ExecutePatchJobRequest,
      Google.Cloud.Osconfig.V1beta.PatchJob

  rpc :GetPatchJob,
      Google.Cloud.Osconfig.V1beta.GetPatchJobRequest,
      Google.Cloud.Osconfig.V1beta.PatchJob

  rpc :CancelPatchJob,
      Google.Cloud.Osconfig.V1beta.CancelPatchJobRequest,
      Google.Cloud.Osconfig.V1beta.PatchJob

  rpc :ListPatchJobs,
      Google.Cloud.Osconfig.V1beta.ListPatchJobsRequest,
      Google.Cloud.Osconfig.V1beta.ListPatchJobsResponse

  rpc :ListPatchJobInstanceDetails,
      Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsRequest,
      Google.Cloud.Osconfig.V1beta.ListPatchJobInstanceDetailsResponse

  rpc :CreatePatchDeployment,
      Google.Cloud.Osconfig.V1beta.CreatePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1beta.PatchDeployment

  rpc :GetPatchDeployment,
      Google.Cloud.Osconfig.V1beta.GetPatchDeploymentRequest,
      Google.Cloud.Osconfig.V1beta.PatchDeployment

  rpc :ListPatchDeployments,
      Google.Cloud.Osconfig.V1beta.ListPatchDeploymentsRequest,
      Google.Cloud.Osconfig.V1beta.ListPatchDeploymentsResponse

  rpc :DeletePatchDeployment,
      Google.Cloud.Osconfig.V1beta.DeletePatchDeploymentRequest,
      Google.Protobuf.Empty

  rpc :UpdatePatchDeployment,
      Google.Cloud.Osconfig.V1beta.UpdatePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1beta.PatchDeployment

  rpc :PausePatchDeployment,
      Google.Cloud.Osconfig.V1beta.PausePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1beta.PatchDeployment

  rpc :ResumePatchDeployment,
      Google.Cloud.Osconfig.V1beta.ResumePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1beta.PatchDeployment

  rpc :CreateGuestPolicy,
      Google.Cloud.Osconfig.V1beta.CreateGuestPolicyRequest,
      Google.Cloud.Osconfig.V1beta.GuestPolicy

  rpc :GetGuestPolicy,
      Google.Cloud.Osconfig.V1beta.GetGuestPolicyRequest,
      Google.Cloud.Osconfig.V1beta.GuestPolicy

  rpc :ListGuestPolicies,
      Google.Cloud.Osconfig.V1beta.ListGuestPoliciesRequest,
      Google.Cloud.Osconfig.V1beta.ListGuestPoliciesResponse

  rpc :UpdateGuestPolicy,
      Google.Cloud.Osconfig.V1beta.UpdateGuestPolicyRequest,
      Google.Cloud.Osconfig.V1beta.GuestPolicy

  rpc :DeleteGuestPolicy,
      Google.Cloud.Osconfig.V1beta.DeleteGuestPolicyRequest,
      Google.Protobuf.Empty

  rpc :LookupEffectiveGuestPolicy,
      Google.Cloud.Osconfig.V1beta.LookupEffectiveGuestPolicyRequest,
      Google.Cloud.Osconfig.V1beta.EffectiveGuestPolicy
end

defmodule Google.Cloud.Osconfig.V1beta.OsConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Osconfig.V1beta.OsConfigService.Service
end