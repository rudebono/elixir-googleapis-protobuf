defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STABLE | :UPDATING

  field :STATE_UNSPECIFIED, 0

  field :STABLE, 1

  field :UPDATING, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fixed_node_count: integer
        }

  defstruct [:fixed_node_count]

  field :fixed_node_count, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          labels: %{String.t() => String.t()},
          online_serving_config:
            Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.Featurestore.State.t(),
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :etag,
    :labels,
    :online_serving_config,
    :state,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :etag, 5, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry,
    map: true

  field :online_serving_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig

  field :state, 8, type: Google.Cloud.Aiplatform.V1beta1.Featurestore.State, enum: true
  field :encryption_spec, 10, type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec
end
