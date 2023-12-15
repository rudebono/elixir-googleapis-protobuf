defmodule Google.Apps.Drive.Labels.V2.LabelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.drive.labels.v2.LabelService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetUserCapabilities,
      Google.Apps.Drive.Labels.V2.GetUserCapabilitiesRequest,
      Google.Apps.Drive.Labels.V2.UserCapabilities

  rpc :ListLabels,
      Google.Apps.Drive.Labels.V2.ListLabelsRequest,
      Google.Apps.Drive.Labels.V2.ListLabelsResponse

  rpc :GetLabel, Google.Apps.Drive.Labels.V2.GetLabelRequest, Google.Apps.Drive.Labels.V2.Label

  rpc :GetLabelLimits,
      Google.Apps.Drive.Labels.V2.GetLabelLimitsRequest,
      Google.Apps.Drive.Labels.V2.LabelLimits

  rpc :CreateLabel,
      Google.Apps.Drive.Labels.V2.CreateLabelRequest,
      Google.Apps.Drive.Labels.V2.Label

  rpc :DeltaUpdateLabel,
      Google.Apps.Drive.Labels.V2.DeltaUpdateLabelRequest,
      Google.Apps.Drive.Labels.V2.DeltaUpdateLabelResponse

  rpc :UpdateLabelCopyMode,
      Google.Apps.Drive.Labels.V2.UpdateLabelCopyModeRequest,
      Google.Apps.Drive.Labels.V2.Label

  rpc :PublishLabel,
      Google.Apps.Drive.Labels.V2.PublishLabelRequest,
      Google.Apps.Drive.Labels.V2.Label

  rpc :DisableLabel,
      Google.Apps.Drive.Labels.V2.DisableLabelRequest,
      Google.Apps.Drive.Labels.V2.Label

  rpc :EnableLabel,
      Google.Apps.Drive.Labels.V2.EnableLabelRequest,
      Google.Apps.Drive.Labels.V2.Label

  rpc :DeleteLabel, Google.Apps.Drive.Labels.V2.DeleteLabelRequest, Google.Protobuf.Empty

  rpc :ListLabelPermissions,
      Google.Apps.Drive.Labels.V2.ListLabelPermissionsRequest,
      Google.Apps.Drive.Labels.V2.ListLabelPermissionsResponse

  rpc :CreateLabelPermission,
      Google.Apps.Drive.Labels.V2.CreateLabelPermissionRequest,
      Google.Apps.Drive.Labels.V2.LabelPermission

  rpc :UpdateLabelPermission,
      Google.Apps.Drive.Labels.V2.UpdateLabelPermissionRequest,
      Google.Apps.Drive.Labels.V2.LabelPermission

  rpc :DeleteLabelPermission,
      Google.Apps.Drive.Labels.V2.DeleteLabelPermissionRequest,
      Google.Protobuf.Empty

  rpc :BatchUpdateLabelPermissions,
      Google.Apps.Drive.Labels.V2.BatchUpdateLabelPermissionsRequest,
      Google.Apps.Drive.Labels.V2.BatchUpdateLabelPermissionsResponse

  rpc :BatchDeleteLabelPermissions,
      Google.Apps.Drive.Labels.V2.BatchDeleteLabelPermissionsRequest,
      Google.Protobuf.Empty

  rpc :ListLabelLocks,
      Google.Apps.Drive.Labels.V2.ListLabelLocksRequest,
      Google.Apps.Drive.Labels.V2.ListLabelLocksResponse
end

defmodule Google.Apps.Drive.Labels.V2.LabelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Drive.Labels.V2.LabelService.Service
end