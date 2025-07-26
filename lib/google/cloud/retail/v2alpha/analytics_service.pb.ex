defmodule Google.Cloud.Retail.V2alpha.AnalyticsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.AnalyticsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ExportAnalyticsMetrics,
      Google.Cloud.Retail.V2alpha.ExportAnalyticsMetricsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.AnalyticsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.AnalyticsService.Service
end
