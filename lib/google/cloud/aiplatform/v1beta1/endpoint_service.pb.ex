defmodule Google.Cloud.Aiplatform.V1beta1.CreateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint: Google.Cloud.Aiplatform.V1beta1.Endpoint.t() | nil
        }

  defstruct [:parent, :endpoint]

  field :parent, 1, type: :string
  field :endpoint, 2, type: Google.Cloud.Aiplatform.V1beta1.Endpoint
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateEndpointOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEndpointsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: [Google.Cloud.Aiplatform.V1beta1.Endpoint.t()],
          next_page_token: String.t()
        }

  defstruct [:endpoints, :next_page_token]

  field :endpoints, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Endpoint
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: Google.Cloud.Aiplatform.V1beta1.Endpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:endpoint, :update_mask]

  field :endpoint, 1, type: Google.Cloud.Aiplatform.V1beta1.Endpoint
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelRequest.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model: Google.Cloud.Aiplatform.V1beta1.DeployedModel.t() | nil,
          traffic_split: %{String.t() => integer}
        }

  defstruct [:endpoint, :deployed_model, :traffic_split]

  field :endpoint, 1, type: :string
  field :deployed_model, 2, type: Google.Cloud.Aiplatform.V1beta1.DeployedModel

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployModelRequest.TrafficSplitEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_model: Google.Cloud.Aiplatform.V1beta1.DeployedModel.t() | nil
        }

  defstruct [:deployed_model]

  field :deployed_model, 1, type: Google.Cloud.Aiplatform.V1beta1.DeployedModel
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model_id: String.t(),
          traffic_split: %{String.t() => integer}
        }

  defstruct [:endpoint, :deployed_model_id, :traffic_split]

  field :endpoint, 1, type: :string
  field :deployed_model_id, 2, type: :string

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest.TrafficSplitEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end
