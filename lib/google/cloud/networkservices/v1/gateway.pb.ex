defmodule Google.Cloud.Networkservices.V1.Gateway.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :OPEN_MESH, 1
  field :SECURE_WEB_GATEWAY, 2
end

defmodule Google.Cloud.Networkservices.V1.Gateway.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1.Gateway do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :self_link, 13, type: :string, json_name: "selfLink", deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.Gateway.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :type, 6,
    type: Google.Cloud.Networkservices.V1.Gateway.Type,
    enum: true,
    deprecated: false

  field :ports, 11, repeated: true, type: :int32, deprecated: false
  field :scope, 8, type: :string, deprecated: false
  field :server_tls_policy, 9, type: :string, json_name: "serverTlsPolicy", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.ListGatewaysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networkservices.V1.ListGatewaysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gateways, 1, repeated: true, type: Google.Cloud.Networkservices.V1.Gateway
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networkservices.V1.GetGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.CreateGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :gateway_id, 2, type: :string, json_name: "gatewayId", deprecated: false
  field :gateway, 3, type: Google.Cloud.Networkservices.V1.Gateway, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.UpdateGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :gateway, 2, type: Google.Cloud.Networkservices.V1.Gateway, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1.DeleteGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
