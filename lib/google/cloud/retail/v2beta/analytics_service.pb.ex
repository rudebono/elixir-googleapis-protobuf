defmodule Google.Cloud.Retail.V2beta.AnalyticsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.AnalyticsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ExportAnalyticsMetrics,
      Google.Cloud.Retail.V2beta.ExportAnalyticsMetricsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2beta.AnalyticsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.AnalyticsService.Service
end