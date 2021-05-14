defmodule Google.Cloud.Vpcaccess.V1.Connector.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :READY | :CREATING | :DELETING | :ERROR | :UPDATING

  field :STATE_UNSPECIFIED, 0

  field :READY, 1

  field :CREATING, 2

  field :DELETING, 3

  field :ERROR, 4

  field :UPDATING, 5
end

defmodule Google.Cloud.Vpcaccess.V1.Connector.Subnet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t()
        }

  defstruct [:name, :project_id]

  field :name, 1, type: :string
  field :project_id, 2, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.Connector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          network: String.t(),
          ip_cidr_range: String.t(),
          state: Google.Cloud.Vpcaccess.V1.Connector.State.t(),
          min_throughput: integer,
          max_throughput: integer,
          connected_projects: [String.t()],
          subnet: Google.Cloud.Vpcaccess.V1.Connector.Subnet.t() | nil
        }

  defstruct [
    :name,
    :network,
    :ip_cidr_range,
    :state,
    :min_throughput,
    :max_throughput,
    :connected_projects,
    :subnet
  ]

  field :name, 1, type: :string
  field :network, 2, type: :string
  field :ip_cidr_range, 3, type: :string
  field :state, 4, type: Google.Cloud.Vpcaccess.V1.Connector.State, enum: true
  field :min_throughput, 5, type: :int32
  field :max_throughput, 6, type: :int32
  field :connected_projects, 7, repeated: true, type: :string
  field :subnet, 8, type: Google.Cloud.Vpcaccess.V1.Connector.Subnet
end

defmodule Google.Cloud.Vpcaccess.V1.CreateConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          connector_id: String.t(),
          connector: Google.Cloud.Vpcaccess.V1.Connector.t() | nil
        }

  defstruct [:parent, :connector_id, :connector]

  field :parent, 1, type: :string
  field :connector_id, 2, type: :string
  field :connector, 3, type: Google.Cloud.Vpcaccess.V1.Connector
end

defmodule Google.Cloud.Vpcaccess.V1.GetConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.ListConnectorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.ListConnectorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connectors: [Google.Cloud.Vpcaccess.V1.Connector.t()],
          next_page_token: String.t()
        }

  defstruct [:connectors, :next_page_token]

  field :connectors, 1, repeated: true, type: Google.Cloud.Vpcaccess.V1.Connector
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.DeleteConnectorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t()
        }

  defstruct [:method, :create_time, :end_time, :target]

  field :method, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :target, 5, type: :string
end

defmodule Google.Cloud.Vpcaccess.V1.VpcAccessService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vpcaccess.v1.VpcAccessService"

  rpc :CreateConnector,
      Google.Cloud.Vpcaccess.V1.CreateConnectorRequest,
      Google.Longrunning.Operation

  rpc :GetConnector,
      Google.Cloud.Vpcaccess.V1.GetConnectorRequest,
      Google.Cloud.Vpcaccess.V1.Connector

  rpc :ListConnectors,
      Google.Cloud.Vpcaccess.V1.ListConnectorsRequest,
      Google.Cloud.Vpcaccess.V1.ListConnectorsResponse

  rpc :DeleteConnector,
      Google.Cloud.Vpcaccess.V1.DeleteConnectorRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vpcaccess.V1.VpcAccessService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vpcaccess.V1.VpcAccessService.Service
end
