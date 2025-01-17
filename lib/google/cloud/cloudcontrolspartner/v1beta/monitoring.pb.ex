defmodule Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerMonitoring.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudcontrolspartner.v1beta.CloudControlsPartnerMonitoring",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListViolations,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListViolationsRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListViolationsResponse

  rpc :GetViolation,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetViolationRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.Violation
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerMonitoring.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerMonitoring.Service
end
