defmodule Google.Cloud.Alloydb.V1.RestoreFromCloudSQLRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :cloudsql_backup_run_source, 101,
    type: Google.Cloud.Alloydb.V1.CloudSQLBackupRunSource,
    json_name: "cloudsqlBackupRunSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Alloydb.V1.Cluster, deprecated: false
end

defmodule Google.Cloud.Alloydb.V1.AlloyDBCSQLAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.alloydb.v1.AlloyDBCSQLAdmin",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RestoreFromCloudSQL,
      Google.Cloud.Alloydb.V1.RestoreFromCloudSQLRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Alloydb.V1.AlloyDBCSQLAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Alloydb.V1.AlloyDBCSQLAdmin.Service
end
