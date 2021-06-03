defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :CANCELLING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :CANCELLING, 2

  field :SUCCEEDED, 3

  field :FAILED, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :state_message, :create_time, :update_time]

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State, enum: true
  field :state_message, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end
