defmodule Google.Cloud.Sql.V1.SqlTiersListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project, 1, type: :string
end

defmodule Google.Cloud.Sql.V1.TiersListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Tier
end

defmodule Google.Cloud.Sql.V1.Tier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tier, 1, type: :string
  field :RAM, 2, type: :int64
  field :kind, 3, type: :string
  field :Disk_Quota, 4, type: :int64, json_name: "DiskQuota"
  field :region, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlTiersService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlTiersService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :List, Google.Cloud.Sql.V1.SqlTiersListRequest, Google.Cloud.Sql.V1.TiersListResponse
end

defmodule Google.Cloud.Sql.V1.SqlTiersService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlTiersService.Service
end