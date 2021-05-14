defmodule Google.Apps.Drive.Activity.V2.DriveActivityService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.apps.drive.activity.v2.DriveActivityService"

  rpc :QueryDriveActivity,
      Google.Apps.Drive.Activity.V2.QueryDriveActivityRequest,
      Google.Apps.Drive.Activity.V2.QueryDriveActivityResponse
end

defmodule Google.Apps.Drive.Activity.V2.DriveActivityService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Apps.Drive.Activity.V2.DriveActivityService.Service
end
