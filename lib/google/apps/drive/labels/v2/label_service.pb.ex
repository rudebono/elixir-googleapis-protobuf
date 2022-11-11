defmodule Google.Apps.Drive.Labels.V2.LabelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.apps.drive.labels.v2.LabelService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListLabels,
      Google.Apps.Drive.Labels.V2.ListLabelsRequest,
      Google.Apps.Drive.Labels.V2.ListLabelsResponse

  rpc :GetLabel, Google.Apps.Drive.Labels.V2.GetLabelRequest, Google.Apps.Drive.Labels.V2.Label
end

defmodule Google.Apps.Drive.Labels.V2.LabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Apps.Drive.Labels.V2.LabelService.Service
end