defmodule Google.Cloud.Osconfig.V1alpha.OsConfigZonalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.osconfig.v1alpha.OsConfigZonalService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateOSPolicyAssignment,
      Google.Cloud.Osconfig.V1alpha.CreateOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :UpdateOSPolicyAssignment,
      Google.Cloud.Osconfig.V1alpha.UpdateOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :GetOSPolicyAssignment,
      Google.Cloud.Osconfig.V1alpha.GetOSPolicyAssignmentRequest,
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignment

  rpc :ListOSPolicyAssignments,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentsRequest,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentsResponse

  rpc :ListOSPolicyAssignmentRevisions,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentRevisionsRequest,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentRevisionsResponse

  rpc :DeleteOSPolicyAssignment,
      Google.Cloud.Osconfig.V1alpha.DeleteOSPolicyAssignmentRequest,
      Google.Longrunning.Operation

  rpc :GetInstanceOSPoliciesCompliance,
      Google.Cloud.Osconfig.V1alpha.GetInstanceOSPoliciesComplianceRequest,
      Google.Cloud.Osconfig.V1alpha.InstanceOSPoliciesCompliance

  rpc :ListInstanceOSPoliciesCompliances,
      Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesRequest,
      Google.Cloud.Osconfig.V1alpha.ListInstanceOSPoliciesCompliancesResponse

  rpc :GetOSPolicyAssignmentReport,
      Google.Cloud.Osconfig.V1alpha.GetOSPolicyAssignmentReportRequest,
      Google.Cloud.Osconfig.V1alpha.OSPolicyAssignmentReport

  rpc :ListOSPolicyAssignmentReports,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentReportsRequest,
      Google.Cloud.Osconfig.V1alpha.ListOSPolicyAssignmentReportsResponse

  rpc :GetInventory,
      Google.Cloud.Osconfig.V1alpha.GetInventoryRequest,
      Google.Cloud.Osconfig.V1alpha.Inventory

  rpc :ListInventories,
      Google.Cloud.Osconfig.V1alpha.ListInventoriesRequest,
      Google.Cloud.Osconfig.V1alpha.ListInventoriesResponse

  rpc :GetVulnerabilityReport,
      Google.Cloud.Osconfig.V1alpha.GetVulnerabilityReportRequest,
      Google.Cloud.Osconfig.V1alpha.VulnerabilityReport

  rpc :ListVulnerabilityReports,
      Google.Cloud.Osconfig.V1alpha.ListVulnerabilityReportsRequest,
      Google.Cloud.Osconfig.V1alpha.ListVulnerabilityReportsResponse
end

defmodule Google.Cloud.Osconfig.V1alpha.OsConfigZonalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Osconfig.V1alpha.OsConfigZonalService.Service
end