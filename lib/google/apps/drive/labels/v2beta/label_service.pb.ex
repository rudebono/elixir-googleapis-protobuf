defmodule Google.Apps.Drive.Labels.V2beta.LabelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.drive.labels.v2beta.LabelService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetUserCapabilities,
      Google.Apps.Drive.Labels.V2beta.GetUserCapabilitiesRequest,
      Google.Apps.Drive.Labels.V2beta.UserCapabilities

  rpc :ListLabels,
      Google.Apps.Drive.Labels.V2beta.ListLabelsRequest,
      Google.Apps.Drive.Labels.V2beta.ListLabelsResponse

  rpc :GetLabel,
      Google.Apps.Drive.Labels.V2beta.GetLabelRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :GetLabelLimits,
      Google.Apps.Drive.Labels.V2beta.GetLabelLimitsRequest,
      Google.Apps.Drive.Labels.V2beta.LabelLimits

  rpc :CreateLabel,
      Google.Apps.Drive.Labels.V2beta.CreateLabelRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :DeltaUpdateLabel,
      Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest,
      Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse

  rpc :UpdateLabelCopyMode,
      Google.Apps.Drive.Labels.V2beta.UpdateLabelCopyModeRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :PublishLabel,
      Google.Apps.Drive.Labels.V2beta.PublishLabelRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :DisableLabel,
      Google.Apps.Drive.Labels.V2beta.DisableLabelRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :EnableLabel,
      Google.Apps.Drive.Labels.V2beta.EnableLabelRequest,
      Google.Apps.Drive.Labels.V2beta.Label

  rpc :DeleteLabel, Google.Apps.Drive.Labels.V2beta.DeleteLabelRequest, Google.Protobuf.Empty

  rpc :ListLabelPermissions,
      Google.Apps.Drive.Labels.V2beta.ListLabelPermissionsRequest,
      Google.Apps.Drive.Labels.V2beta.ListLabelPermissionsResponse

  rpc :CreateLabelPermission,
      Google.Apps.Drive.Labels.V2beta.CreateLabelPermissionRequest,
      Google.Apps.Drive.Labels.V2beta.LabelPermission

  rpc :UpdateLabelPermission,
      Google.Apps.Drive.Labels.V2beta.UpdateLabelPermissionRequest,
      Google.Apps.Drive.Labels.V2beta.LabelPermission

  rpc :DeleteLabelPermission,
      Google.Apps.Drive.Labels.V2beta.DeleteLabelPermissionRequest,
      Google.Protobuf.Empty

  rpc :BatchUpdateLabelPermissions,
      Google.Apps.Drive.Labels.V2beta.BatchUpdateLabelPermissionsRequest,
      Google.Apps.Drive.Labels.V2beta.BatchUpdateLabelPermissionsResponse

  rpc :BatchDeleteLabelPermissions,
      Google.Apps.Drive.Labels.V2beta.BatchDeleteLabelPermissionsRequest,
      Google.Protobuf.Empty

  rpc :ListLabelLocks,
      Google.Apps.Drive.Labels.V2beta.ListLabelLocksRequest,
      Google.Apps.Drive.Labels.V2beta.ListLabelLocksResponse
end

defmodule Google.Apps.Drive.Labels.V2beta.LabelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Drive.Labels.V2beta.LabelService.Service
end