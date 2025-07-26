defmodule Google.Cloud.Financialservices.V1.EngineVersion.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :LIMITED, 2
  field :DECOMMISSIONED, 3
end

defmodule Google.Cloud.Financialservices.V1.EngineVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Financialservices.V1.EngineVersion.State,
    enum: true,
    deprecated: false

  field :expected_limitation_start_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "expectedLimitationStartTime",
    deprecated: false

  field :expected_decommission_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expectedDecommissionTime",
    deprecated: false

  field :line_of_business, 5,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListEngineVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListEngineVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :engine_versions, 1,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.EngineVersion,
    json_name: "engineVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetEngineVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
