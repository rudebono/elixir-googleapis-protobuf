defmodule Google.Cloud.Gaming.V1beta.RealmsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.v1beta.RealmsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListRealms,
      Google.Cloud.Gaming.V1beta.ListRealmsRequest,
      Google.Cloud.Gaming.V1beta.ListRealmsResponse

  rpc :GetRealm, Google.Cloud.Gaming.V1beta.GetRealmRequest, Google.Cloud.Gaming.V1beta.Realm

  rpc :CreateRealm, Google.Cloud.Gaming.V1beta.CreateRealmRequest, Google.Longrunning.Operation

  rpc :DeleteRealm, Google.Cloud.Gaming.V1beta.DeleteRealmRequest, Google.Longrunning.Operation

  rpc :UpdateRealm, Google.Cloud.Gaming.V1beta.UpdateRealmRequest, Google.Longrunning.Operation

  rpc :PreviewRealmUpdate,
      Google.Cloud.Gaming.V1beta.PreviewRealmUpdateRequest,
      Google.Cloud.Gaming.V1beta.PreviewRealmUpdateResponse
end

defmodule Google.Cloud.Gaming.V1beta.RealmsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1beta.RealmsService.Service
end