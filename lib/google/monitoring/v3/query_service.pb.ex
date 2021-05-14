defmodule Google.Monitoring.V3.QueryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.QueryService"

  rpc :QueryTimeSeries,
      Google.Monitoring.V3.QueryTimeSeriesRequest,
      Google.Monitoring.V3.QueryTimeSeriesResponse
end

defmodule Google.Monitoring.V3.QueryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.V3.QueryService.Service
end
