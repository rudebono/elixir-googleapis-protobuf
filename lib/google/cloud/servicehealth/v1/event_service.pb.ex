defmodule Google.Cloud.Servicehealth.V1.ServiceHealth.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.servicehealth.v1.ServiceHealth",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListEvents,
      Google.Cloud.Servicehealth.V1.ListEventsRequest,
      Google.Cloud.Servicehealth.V1.ListEventsResponse

  rpc :GetEvent,
      Google.Cloud.Servicehealth.V1.GetEventRequest,
      Google.Cloud.Servicehealth.V1.Event

  rpc :ListOrganizationEvents,
      Google.Cloud.Servicehealth.V1.ListOrganizationEventsRequest,
      Google.Cloud.Servicehealth.V1.ListOrganizationEventsResponse

  rpc :GetOrganizationEvent,
      Google.Cloud.Servicehealth.V1.GetOrganizationEventRequest,
      Google.Cloud.Servicehealth.V1.OrganizationEvent

  rpc :ListOrganizationImpacts,
      Google.Cloud.Servicehealth.V1.ListOrganizationImpactsRequest,
      Google.Cloud.Servicehealth.V1.ListOrganizationImpactsResponse

  rpc :GetOrganizationImpact,
      Google.Cloud.Servicehealth.V1.GetOrganizationImpactRequest,
      Google.Cloud.Servicehealth.V1.OrganizationImpact
end

defmodule Google.Cloud.Servicehealth.V1.ServiceHealth.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Servicehealth.V1.ServiceHealth.Service
end
