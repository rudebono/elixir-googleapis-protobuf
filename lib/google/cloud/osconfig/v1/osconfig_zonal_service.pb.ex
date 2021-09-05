defmodule Google.Cloud.Osconfig.V1.OsConfigZonalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.osconfig.v1.OsConfigZonalService"

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
