defmodule Google.Cloud.Aiplatform.V1.Endpoint.TrafficSplitEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Endpoint.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          deployed_models: [Google.Cloud.Aiplatform.V1.DeployedModel.t()],
          traffic_split: %{String.t() => integer},
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :deployed_models,
    :traffic_split,
    :etag,
    :labels,
    :create_time,
    :update_time,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :deployed_models, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.DeployedModel

  field :traffic_split, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Endpoint.TrafficSplitEntry,
    map: true

  field :etag, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Endpoint.LabelsEntry,
    map: true

  field :create_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :encryption_spec, 10, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
end

defmodule Google.Cloud.Aiplatform.V1.DeployedModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prediction_resources: {atom, any},
          id: String.t(),
          model: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          service_account: String.t(),
          disable_container_logging: boolean,
          enable_access_logging: boolean
        }

  defstruct [
    :prediction_resources,
    :id,
    :model,
    :display_name,
    :create_time,
    :service_account,
    :disable_container_logging,
    :enable_access_logging
  ]

  oneof :prediction_resources, 0
  field :dedicated_resources, 7, type: Google.Cloud.Aiplatform.V1.DedicatedResources, oneof: 0
  field :automatic_resources, 8, type: Google.Cloud.Aiplatform.V1.AutomaticResources, oneof: 0
  field :id, 1, type: :string
  field :model, 2, type: :string
  field :display_name, 3, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :service_account, 11, type: :string
  field :disable_container_logging, 15, type: :bool
  field :enable_access_logging, 13, type: :bool
end
