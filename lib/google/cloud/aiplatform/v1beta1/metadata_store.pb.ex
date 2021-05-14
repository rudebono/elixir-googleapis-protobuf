defmodule Google.Cloud.Aiplatform.V1beta1.MetadataStore.MetadataStoreState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disk_utilization_bytes: integer
        }

  defstruct [:disk_utilization_bytes]

  field :disk_utilization_bytes, 1, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetadataStore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil,
          description: String.t(),
          state: Google.Cloud.Aiplatform.V1beta1.MetadataStore.MetadataStoreState.t() | nil
        }

  defstruct [:name, :create_time, :update_time, :encryption_spec, :description, :state]

  field :name, 1, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :encryption_spec, 5, type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec
  field :description, 6, type: :string
  field :state, 7, type: Google.Cloud.Aiplatform.V1beta1.MetadataStore.MetadataStoreState
end
