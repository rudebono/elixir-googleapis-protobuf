defmodule Google.Cloud.Oracledatabase.V1.OdbSubnet.Purpose do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PURPOSE_UNSPECIFIED, 0
  field :CLIENT_SUBNET, 1
  field :BACKUP_SUBNET, 2
end

defmodule Google.Cloud.Oracledatabase.V1.OdbSubnet.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :TERMINATING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Oracledatabase.V1.OdbSubnet.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.OdbSubnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :cidr_range, 2, type: :string, json_name: "cidrRange", deprecated: false

  field :purpose, 3,
    type: Google.Cloud.Oracledatabase.V1.OdbSubnet.Purpose,
    enum: true,
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.OdbSubnet.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Oracledatabase.V1.OdbSubnet.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateOdbSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :odb_subnet_id, 2, type: :string, json_name: "odbSubnetId", deprecated: false

  field :odb_subnet, 3,
    type: Google.Cloud.Oracledatabase.V1.OdbSubnet,
    json_name: "odbSubnet",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteOdbSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListOdbSubnetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListOdbSubnetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :odb_subnets, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.OdbSubnet,
    json_name: "odbSubnets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.GetOdbSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
