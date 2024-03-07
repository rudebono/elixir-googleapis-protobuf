defmodule Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerMonitoring.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudcontrolspartner.v1.CloudControlsPartnerMonitoring",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListViolations,
      Google.Cloud.Cloudcontrolspartner.V1.ListViolationsRequest,
      Google.Cloud.Cloudcontrolspartner.V1.ListViolationsResponse

  rpc :GetViolation,
      Google.Cloud.Cloudcontrolspartner.V1.GetViolationRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Violation
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerMonitoring.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerMonitoring.Service
end