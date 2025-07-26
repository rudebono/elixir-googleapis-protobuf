defmodule Google.Cloud.Retail.V2.AnalyticsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2.AnalyticsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ExportAnalyticsMetrics,
      Google.Cloud.Retail.V2.ExportAnalyticsMetricsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.AnalyticsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2.AnalyticsService.Service
end
