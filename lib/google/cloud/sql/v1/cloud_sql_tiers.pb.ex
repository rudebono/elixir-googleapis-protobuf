defmodule Google.Cloud.Sql.V1.SqlTiersListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t()
        }

  defstruct [:project]

  field :project, 1, type: :string
end

defmodule Google.Cloud.Sql.V1.TiersListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.Tier.t()]
        }

  defstruct [:kind, :items]

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Tier
end

defmodule Google.Cloud.Sql.V1.Tier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tier: String.t(),
          RAM: integer,
          kind: String.t(),
          Disk_Quota: integer,
          region: [String.t()]
        }

  defstruct [:tier, :RAM, :kind, :Disk_Quota, :region]

  field :tier, 1, type: :string
  field :RAM, 2, type: :int64
  field :kind, 3, type: :string
  field :Disk_Quota, 4, type: :int64
  field :region, 5, repeated: true, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlTiersService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlTiersService"

  rpc :List, Google.Cloud.Sql.V1.SqlTiersListRequest, Google.Cloud.Sql.V1.TiersListResponse
end

defmodule Google.Cloud.Sql.V1.SqlTiersService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlTiersService.Service
end
