defmodule Google.Cloud.Networkconnectivity.V1.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :ACTIVE | :DELETING

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :ACTIVE, 2

  field :DELETING, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.Hub.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Hub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          unique_id: String.t(),
          state: Google.Cloud.Networkconnectivity.V1.State.t()
        }

  defstruct [:name, :create_time, :update_time, :labels, :description, :unique_id, :state]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Hub.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :unique_id, 8, type: :string
  field :state, 9, type: Google.Cloud.Networkconnectivity.V1.State, enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.Spoke do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          description: String.t(),
          hub: String.t(),
          linked_vpn_tunnels: Google.Cloud.Networkconnectivity.V1.LinkedVpnTunnels.t() | nil,
          linked_interconnect_attachments:
            Google.Cloud.Networkconnectivity.V1.LinkedInterconnectAttachments.t() | nil,
          linked_router_appliance_instances:
            Google.Cloud.Networkconnectivity.V1.LinkedRouterApplianceInstances.t() | nil,
          unique_id: String.t(),
          state: Google.Cloud.Networkconnectivity.V1.State.t()
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
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.Spoke.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :hub, 6, type: :string
  field :linked_vpn_tunnels, 17, type: Google.Cloud.Networkconnectivity.V1.LinkedVpnTunnels

  field :linked_interconnect_attachments, 18,
    type: Google.Cloud.Networkconnectivity.V1.LinkedInterconnectAttachments

  field :linked_router_appliance_instances, 19,
    type: Google.Cloud.Networkconnectivity.V1.LinkedRouterApplianceInstances

  field :unique_id, 11, type: :string
  field :state, 15, type: Google.Cloud.Networkconnectivity.V1.State, enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListHubsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hubs: [Google.Cloud.Networkconnectivity.V1.Hub.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:hubs, :next_page_token, :unreachable]

  field :hubs, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Hub
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          hub_id: String.t(),
          hub: Google.Cloud.Networkconnectivity.V1.Hub.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :hub_id, :hub, :request_id]

  field :parent, 1, type: :string
  field :hub_id, 2, type: :string
  field :hub, 3, type: Google.Cloud.Networkconnectivity.V1.Hub
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          hub: Google.Cloud.Networkconnectivity.V1.Hub.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :hub, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :hub, 2, type: Google.Cloud.Networkconnectivity.V1.Hub
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteHubRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListSpokesRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ListSpokesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          spokes: [Google.Cloud.Networkconnectivity.V1.Spoke.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:spokes, :next_page_token, :unreachable]

  field :spokes, 1, repeated: true, type: Google.Cloud.Networkconnectivity.V1.Spoke
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          spoke_id: String.t(),
          spoke: Google.Cloud.Networkconnectivity.V1.Spoke.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :spoke_id, :spoke, :request_id]

  field :parent, 1, type: :string
  field :spoke_id, 2, type: :string
  field :spoke, 3, type: Google.Cloud.Networkconnectivity.V1.Spoke
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          spoke: Google.Cloud.Networkconnectivity.V1.Spoke.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :spoke, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :spoke, 2, type: Google.Cloud.Networkconnectivity.V1.Spoke
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.DeactivateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ActivateSpokeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedVpnTunnels do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()],
          site_to_site_data_transfer: boolean
        }

  defstruct [:uris, :site_to_site_data_transfer]

  field :uris, 1, repeated: true, type: :string
  field :site_to_site_data_transfer, 2, type: :bool
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedInterconnectAttachments do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()],
          site_to_site_data_transfer: boolean
        }

  defstruct [:uris, :site_to_site_data_transfer]

  field :uris, 1, repeated: true, type: :string
  field :site_to_site_data_transfer, 2, type: :bool
end

defmodule Google.Cloud.Networkconnectivity.V1.LinkedRouterApplianceInstances do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Networkconnectivity.V1.RouterApplianceInstance.t()],
          site_to_site_data_transfer: boolean
        }

  defstruct [:instances, :site_to_site_data_transfer]

  field :instances, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.RouterApplianceInstance

  field :site_to_site_data_transfer, 2, type: :bool
end

defmodule Google.Cloud.Networkconnectivity.V1.RouterApplianceInstance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          virtual_machine: String.t(),
          ip_address: String.t()
        }

  defstruct [:virtual_machine, :ip_address]

  field :virtual_machine, 1, type: :string
  field :ip_address, 3, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.HubService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.networkconnectivity.v1.HubService"

  rpc :ListHubs,
      Google.Cloud.Networkconnectivity.V1.ListHubsRequest,
      Google.Cloud.Networkconnectivity.V1.ListHubsResponse

  rpc :GetHub,
      Google.Cloud.Networkconnectivity.V1.GetHubRequest,
      Google.Cloud.Networkconnectivity.V1.Hub

  rpc :CreateHub,
      Google.Cloud.Networkconnectivity.V1.CreateHubRequest,
      Google.Longrunning.Operation

  rpc :UpdateHub,
      Google.Cloud.Networkconnectivity.V1.UpdateHubRequest,
      Google.Longrunning.Operation

  rpc :DeleteHub,
      Google.Cloud.Networkconnectivity.V1.DeleteHubRequest,
      Google.Longrunning.Operation

  rpc :ListSpokes,
      Google.Cloud.Networkconnectivity.V1.ListSpokesRequest,
      Google.Cloud.Networkconnectivity.V1.ListSpokesResponse

  rpc :GetSpoke,
      Google.Cloud.Networkconnectivity.V1.GetSpokeRequest,
      Google.Cloud.Networkconnectivity.V1.Spoke

  rpc :CreateSpoke,
      Google.Cloud.Networkconnectivity.V1.CreateSpokeRequest,
      Google.Longrunning.Operation

  rpc :UpdateSpoke,
      Google.Cloud.Networkconnectivity.V1.UpdateSpokeRequest,
      Google.Longrunning.Operation

  rpc :DeactivateSpoke,
      Google.Cloud.Networkconnectivity.V1.DeactivateSpokeRequest,
      Google.Longrunning.Operation

  rpc :ActivateSpoke,
      Google.Cloud.Networkconnectivity.V1.ActivateSpokeRequest,
      Google.Longrunning.Operation

  rpc :DeleteSpoke,
      Google.Cloud.Networkconnectivity.V1.DeleteSpokeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1.HubService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1.HubService.Service
end
