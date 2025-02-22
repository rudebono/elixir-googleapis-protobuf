defmodule Google.Cloud.Osconfig.V1.OsConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.osconfig.v1.OsConfigService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ExecutePatchJob,
      Google.Cloud.Osconfig.V1.ExecutePatchJobRequest,
      Google.Cloud.Osconfig.V1.PatchJob

  rpc :GetPatchJob, Google.Cloud.Osconfig.V1.GetPatchJobRequest, Google.Cloud.Osconfig.V1.PatchJob

  rpc :CancelPatchJob,
      Google.Cloud.Osconfig.V1.CancelPatchJobRequest,
      Google.Cloud.Osconfig.V1.PatchJob

  rpc :ListPatchJobs,
      Google.Cloud.Osconfig.V1.ListPatchJobsRequest,
      Google.Cloud.Osconfig.V1.ListPatchJobsResponse

  rpc :ListPatchJobInstanceDetails,
      Google.Cloud.Osconfig.V1.ListPatchJobInstanceDetailsRequest,
      Google.Cloud.Osconfig.V1.ListPatchJobInstanceDetailsResponse

  rpc :CreatePatchDeployment,
      Google.Cloud.Osconfig.V1.CreatePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1.PatchDeployment

  rpc :GetPatchDeployment,
      Google.Cloud.Osconfig.V1.GetPatchDeploymentRequest,
      Google.Cloud.Osconfig.V1.PatchDeployment

  rpc :ListPatchDeployments,
      Google.Cloud.Osconfig.V1.ListPatchDeploymentsRequest,
      Google.Cloud.Osconfig.V1.ListPatchDeploymentsResponse

  rpc :DeletePatchDeployment,
      Google.Cloud.Osconfig.V1.DeletePatchDeploymentRequest,
      Google.Protobuf.Empty

  rpc :UpdatePatchDeployment,
      Google.Cloud.Osconfig.V1.UpdatePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1.PatchDeployment

  rpc :PausePatchDeployment,
      Google.Cloud.Osconfig.V1.PausePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1.PatchDeployment

  rpc :ResumePatchDeployment,
      Google.Cloud.Osconfig.V1.ResumePatchDeploymentRequest,
      Google.Cloud.Osconfig.V1.PatchDeployment
end

defmodule Google.Cloud.Osconfig.V1.OsConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Osconfig.V1.OsConfigService.Service
end
