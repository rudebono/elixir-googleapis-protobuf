defmodule Google.Cloud.Gaming.V1.RealmsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gaming.v1.RealmsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListRealms,
      Google.Cloud.Gaming.V1.ListRealmsRequest,
      Google.Cloud.Gaming.V1.ListRealmsResponse

  rpc :GetRealm, Google.Cloud.Gaming.V1.GetRealmRequest, Google.Cloud.Gaming.V1.Realm

  rpc :CreateRealm, Google.Cloud.Gaming.V1.CreateRealmRequest, Google.Longrunning.Operation

  rpc :DeleteRealm, Google.Cloud.Gaming.V1.DeleteRealmRequest, Google.Longrunning.Operation

  rpc :UpdateRealm, Google.Cloud.Gaming.V1.UpdateRealmRequest, Google.Longrunning.Operation

  rpc :PreviewRealmUpdate,
      Google.Cloud.Gaming.V1.PreviewRealmUpdateRequest,
      Google.Cloud.Gaming.V1.PreviewRealmUpdateResponse
end

defmodule Google.Cloud.Gaming.V1.RealmsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gaming.V1.RealmsService.Service
end