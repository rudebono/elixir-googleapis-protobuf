defmodule Google.Cloud.Managedidentities.V1.Domain.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :READY
          | :UPDATING
          | :DELETING
          | :REPAIRING
          | :PERFORMING_MAINTENANCE
          | :UNAVAILABLE

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
  field :PERFORMING_MAINTENANCE, 6
  field :UNAVAILABLE, 7
end
defmodule Google.Cloud.Managedidentities.V1.Trust.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :UPDATING
          | :DELETING
          | :CONNECTED
          | :DISCONNECTED

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :DELETING, 3
  field :CONNECTED, 4
  field :DISCONNECTED, 5
end
defmodule Google.Cloud.Managedidentities.V1.Trust.TrustType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TRUST_TYPE_UNSPECIFIED | :FOREST | :EXTERNAL

  field :TRUST_TYPE_UNSPECIFIED, 0
  field :FOREST, 1
  field :EXTERNAL, 2
end
defmodule Google.Cloud.Managedidentities.V1.Trust.TrustDirection do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TRUST_DIRECTION_UNSPECIFIED | :INBOUND | :OUTBOUND | :BIDIRECTIONAL

  field :TRUST_DIRECTION_UNSPECIFIED, 0
  field :INBOUND, 1
  field :OUTBOUND, 2
  field :BIDIRECTIONAL, 3
end
defmodule Google.Cloud.Managedidentities.V1.Domain.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Managedidentities.V1.Domain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          authorized_networks: [String.t()],
          reserved_ip_range: String.t(),
          locations: [String.t()],
          admin: String.t(),
          fqdn: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Managedidentities.V1.Domain.State.t(),
          status_message: String.t(),
          trusts: [Google.Cloud.Managedidentities.V1.Trust.t()]
        }

  defstruct name: "",
            labels: %{},
            authorized_networks: [],
            reserved_ip_range: "",
            locations: [],
            admin: "",
            fqdn: "",
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            status_message: "",
            trusts: []

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Managedidentities.V1.Domain.LabelsEntry,
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
    type: Google.Cloud.Managedidentities.V1.Domain.State,
    enum: true,
    deprecated: false

  field :status_message, 14, type: :string, json_name: "statusMessage", deprecated: false

  field :trusts, 15,
    repeated: true,
    type: Google.Cloud.Managedidentities.V1.Trust,
    deprecated: false
end
defmodule Google.Cloud.Managedidentities.V1.Trust do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_domain_name: String.t(),
          trust_type: Google.Cloud.Managedidentities.V1.Trust.TrustType.t(),
          trust_direction: Google.Cloud.Managedidentities.V1.Trust.TrustDirection.t(),
          selective_authentication: boolean,
          target_dns_ip_addresses: [String.t()],
          trust_handshake_secret: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Managedidentities.V1.Trust.State.t(),
          state_description: String.t(),
          last_trust_heartbeat_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct target_domain_name: "",
            trust_type: :TRUST_TYPE_UNSPECIFIED,
            trust_direction: :TRUST_DIRECTION_UNSPECIFIED,
            selective_authentication: false,
            target_dns_ip_addresses: [],
            trust_handshake_secret: "",
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            state_description: "",
            last_trust_heartbeat_time: nil

  field :target_domain_name, 1, type: :string, json_name: "targetDomainName", deprecated: false

  field :trust_type, 2,
    type: Google.Cloud.Managedidentities.V1.Trust.TrustType,
    json_name: "trustType",
    enum: true,
    deprecated: false

  field :trust_direction, 3,
    type: Google.Cloud.Managedidentities.V1.Trust.TrustDirection,
    json_name: "trustDirection",
    enum: true,
    deprecated: false

  field :selective_authentication, 4,
    type: :bool,
    json_name: "selectiveAuthentication",
    deprecated: false

  field :target_dns_ip_addresses, 5,
    repeated: true,
    type: :string,
    json_name: "targetDnsIpAddresses",
    deprecated: false

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
    type: Google.Cloud.Managedidentities.V1.Trust.State,
    enum: true,
    deprecated: false

  field :state_description, 11, type: :string, json_name: "stateDescription", deprecated: false

  field :last_trust_heartbeat_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTrustHeartbeatTime",
    deprecated: false
end
