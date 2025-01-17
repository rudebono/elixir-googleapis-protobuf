defmodule Google.Cloud.Managedidentities.V1beta1.Domain.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
  field :PERFORMING_MAINTENANCE, 6
  field :UNAVAILABLE, 7
end

defmodule Google.Cloud.Managedidentities.V1beta1.Trust.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :DELETING, 3
  field :CONNECTED, 4
  field :DISCONNECTED, 5
end

defmodule Google.Cloud.Managedidentities.V1beta1.Trust.TrustType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TRUST_TYPE_UNSPECIFIED, 0
  field :FOREST, 1
  field :EXTERNAL, 2
end

defmodule Google.Cloud.Managedidentities.V1beta1.Trust.TrustDirection do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TRUST_DIRECTION_UNSPECIFIED, 0
  field :INBOUND, 1
  field :OUTBOUND, 2
  field :BIDIRECTIONAL, 3
end

defmodule Google.Cloud.Managedidentities.V1beta1.Domain.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Managedidentities.V1beta1.Domain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Managedidentities.V1beta1.Domain.LabelsEntry,
    map: true,
    deprecated: false

  field :authorized_networks, 3,
    repeated: true,
    type: :string,
    json_name: "authorizedNetworks",
    deprecated: false

  field :reserved_ip_range, 4, type: :string, json_name: "reservedIpRange", deprecated: false
  field :locations, 5, repeated: true, type: :string, deprecated: false
  field :admin, 6, type: :string, deprecated: false
  field :fqdn, 10, type: :string, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 13,
    type: Google.Cloud.Managedidentities.V1beta1.Domain.State,
    enum: true,
    deprecated: false

  field :status_message, 14, type: :string, json_name: "statusMessage", deprecated: false

  field :trusts, 15,
    repeated: true,
    type: Google.Cloud.Managedidentities.V1beta1.Trust,
    deprecated: false
end

defmodule Google.Cloud.Managedidentities.V1beta1.Trust do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_domain_name, 1, type: :string, json_name: "targetDomainName"

  field :trust_type, 2,
    type: Google.Cloud.Managedidentities.V1beta1.Trust.TrustType,
    json_name: "trustType",
    enum: true

  field :trust_direction, 3,
    type: Google.Cloud.Managedidentities.V1beta1.Trust.TrustDirection,
    json_name: "trustDirection",
    enum: true

  field :selective_authentication, 4, type: :bool, json_name: "selectiveAuthentication"

  field :target_dns_ip_addresses, 5,
    repeated: true,
    type: :string,
    json_name: "targetDnsIpAddresses"

  field :trust_handshake_secret, 6,
    type: :string,
    json_name: "trustHandshakeSecret",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 9,
    type: Google.Cloud.Managedidentities.V1beta1.Trust.State,
    enum: true,
    deprecated: false

  field :state_description, 11, type: :string, json_name: "stateDescription", deprecated: false

  field :last_trust_heartbeat_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTrustHeartbeatTime",
    deprecated: false
end
