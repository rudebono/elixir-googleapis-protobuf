defmodule Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:partial_failures, :create_time, :update_time]

  field :partial_failures, 1, repeated: true, type: Google.Rpc.Status
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end
