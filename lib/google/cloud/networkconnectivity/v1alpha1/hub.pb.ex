defmodule Google.Cloud.Networkconnectivity.V1alpha1.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :ACTIVE | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Hub.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Hub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          spokes: [String.t()],
          unique_id: String.t(),
          state: Google.Cloud.Networkconnectivity.V1alpha1.State.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :description,
    :spokes,
    :unique_id,
    :state
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.Hub.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :spokes, 6, repeated: true, type: :string
  field :unique_id, 8, type: :string, json_name: "uniqueId"
  field :state, 9, type: Google.Cloud.Networkconnectivity.V1alpha1.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Spoke.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.Spoke do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          hub: String.t(),
          linked_vpn_tunnels: [String.t()],
          linked_interconnect_attachments: [String.t()],
          linked_router_appliance_instances: [
            Google.Cloud.Networkconnectivity.V1alpha1.RouterApplianceInstance.t()
          ],
          unique_id: String.t(),
          state: Google.Cloud.Networkconnectivity.V1alpha1.State.t()
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :description,
    :hub,
    :linked_vpn_tunnels,
    :linked_interconnect_attachments,
    :linked_router_appliance_instances,
    :unique_id,
    :state
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :hub, 6, type: :string
  field :linked_vpn_tunnels, 12, repeated: true, type: :string, json_name: "linkedVpnTunnels"

  field :linked_interconnect_attachments, 13,
    repeated: true,
    type: :string,
    json_name: "linkedInterconnectAttachments"

  field :linked_router_appliance_instances, 14,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1alpha1.RouterApplianceInstance,
    json_name: "linkedRouterApplianceInstances"

  field :unique_id, 11, type: :string, json_name: "uniqueId"
  field :state, 15, type: Google.Cloud.Networkconnectivity.V1alpha1.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListHubsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListHubsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hubs: [Google.Cloud.Networkconnectivity.V1alpha1.Hub.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:hubs, :next_page_token, :unreachable]

  field :hubs, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.GetHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.CreateHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          hub_id: String.t(),
          hub: Google.Cloud.Networkconnectivity.V1alpha1.Hub.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :hub_id, :hub, :request_id]

  field :parent, 1, type: :string
  field :hub_id, 2, type: :string, json_name: "hubId"
  field :hub, 3, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.UpdateHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          hub: Google.Cloud.Networkconnectivity.V1alpha1.Hub.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :hub, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :hub, 2, type: Google.Cloud.Networkconnectivity.V1alpha1.Hub
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.DeleteHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          spokes: [Google.Cloud.Networkconnectivity.V1alpha1.Spoke.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:spokes, :next_page_token, :unreachable]

  field :spokes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.GetSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.CreateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          spoke_id: String.t(),
          spoke: Google.Cloud.Networkconnectivity.V1alpha1.Spoke.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :spoke_id, :spoke, :request_id]

  field :parent, 1, type: :string
  field :spoke_id, 2, type: :string, json_name: "spokeId"
  field :spoke, 3, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.UpdateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          spoke: Google.Cloud.Networkconnectivity.V1alpha1.Spoke.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :spoke, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :spoke, 2, type: Google.Cloud.Networkconnectivity.V1alpha1.Spoke
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.DeleteSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.RouterApplianceInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          virtual_machine: String.t(),
          ip_address: String.t(),
          network_interface: String.t()
        }

  defstruct [:virtual_machine, :ip_address, :network_interface]

  field :virtual_machine, 1, type: :string, json_name: "virtualMachine"
  field :ip_address, 3, type: :string, json_name: "ipAddress"
  field :network_interface, 2, type: :string, deprecated: true, json_name: "networkInterface"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.HubService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.networkconnectivity.v1alpha1.HubService"

  rpc :ListHubs,
      Google.Cloud.Networkconnectivity.V1alpha1.ListHubsRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.ListHubsResponse

  rpc :GetHub,
      Google.Cloud.Networkconnectivity.V1alpha1.GetHubRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.Hub

  rpc :CreateHub,
      Google.Cloud.Networkconnectivity.V1alpha1.CreateHubRequest,
      Google.Longrunning.Operation

  rpc :UpdateHub,
      Google.Cloud.Networkconnectivity.V1alpha1.UpdateHubRequest,
      Google.Longrunning.Operation

  rpc :DeleteHub,
      Google.Cloud.Networkconnectivity.V1alpha1.DeleteHubRequest,
      Google.Longrunning.Operation

  rpc :ListSpokes,
      Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.ListSpokesResponse

  rpc :GetSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.GetSpokeRequest,
      Google.Cloud.Networkconnectivity.V1alpha1.Spoke

  rpc :CreateSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.CreateSpokeRequest,
      Google.Longrunning.Operation

  rpc :UpdateSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.UpdateSpokeRequest,
      Google.Longrunning.Operation

  rpc :DeleteSpoke,
      Google.Cloud.Networkconnectivity.V1alpha1.DeleteSpokeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1alpha1.HubService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1alpha1.HubService.Service
end
