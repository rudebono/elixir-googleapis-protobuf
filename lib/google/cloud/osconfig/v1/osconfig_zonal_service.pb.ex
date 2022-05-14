defmodule Google.Cloud.Osconfig.V1.OsConfigZonalService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.osconfig.v1.OsConfigZonalService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateOSPolicyAssignment,
      Google.Cloud.Osconfig.V1.CreateOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateOSPolicyAssignment,
      Google.Cloud.Osconfig.V1.UpdateOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :GetOSPolicyAssignment,
      Google.Cloud.Osconfig.V1.GetOSPolicyAssignmentRequest,
      Google.Cloud.Osconfig.V1.OSPolicyAssignment

  rpc :ListOSPolicyAssignments,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsRequest,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsResponse

  rpc :ListOSPolicyAssignmentRevisions,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsRequest,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsResponse

  rpc :DeleteOSPolicyAssignment,
      Google.Cloud.Osconfig.V1.DeleteOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :GetOSPolicyAssignmentReport,
      Google.Cloud.Osconfig.V1.GetOSPolicyAssignmentReportRequest,
      Google.Cloud.Osconfig.V1.OSPolicyAssignmentReport

  rpc :ListOSPolicyAssignmentReports,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentReportsRequest,
      Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentReportsResponse

  rpc :GetInventory,
      Google.Cloud.Osconfig.V1.GetInventoryRequest,
      Google.Cloud.Osconfig.V1.Inventory

  rpc :ListInventories,
      Google.Cloud.Osconfig.V1.ListInventoriesRequest,
      Google.Cloud.Osconfig.V1.ListInventoriesResponse

  rpc :GetVulnerabilityReport,
      Google.Cloud.Osconfig.V1.GetVulnerabilityReportRequest,
      Google.Cloud.Osconfig.V1.VulnerabilityReport

  rpc :ListVulnerabilityReports,
      Google.Cloud.Osconfig.V1.ListVulnerabilityReportsRequest,
      Google.Cloud.Osconfig.V1.ListVulnerabilityReportsResponse
end

defmodule Google.Cloud.Osconfig.V1.OsConfigZonalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Osconfig.V1.OsConfigZonalService.Service
end
