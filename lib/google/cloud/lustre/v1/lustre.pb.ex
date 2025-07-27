defmodule Google.Cloud.Lustre.V1.Lustre.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.lustre.v1.Lustre", protoc_gen_elixir_version: "0.15.0"

  rpc :ListInstances,
      Google.Cloud.Lustre.V1.ListInstancesRequest,
      Google.Cloud.Lustre.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Lustre.V1.GetInstanceRequest, Google.Cloud.Lustre.V1.Instance

  rpc :CreateInstance, Google.Cloud.Lustre.V1.CreateInstanceRequest, Google.Longrunning.Operation

  rpc :UpdateInstance, Google.Cloud.Lustre.V1.UpdateInstanceRequest, Google.Longrunning.Operation

  rpc :DeleteInstance, Google.Cloud.Lustre.V1.DeleteInstanceRequest, Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Lustre.V1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Lustre.V1.ExportDataRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Lustre.V1.Lustre.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Lustre.V1.Lustre.Service
end
