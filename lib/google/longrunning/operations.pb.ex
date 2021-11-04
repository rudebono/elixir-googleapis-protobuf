defmodule Google.Longrunning.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            {:error, Google.Rpc.Status.t() | nil} | {:response, Google.Protobuf.Any.t() | nil},
          name: String.t(),
          metadata: Google.Protobuf.Any.t() | nil,
          done: boolean
        }

  defstruct [:result, :name, :metadata, :done]

  oneof :result, 0

  field :name, 1, type: :string
  field :metadata, 2, type: Google.Protobuf.Any
  field :done, 3, type: :bool
  field :error, 4, type: Google.Rpc.Status, oneof: 0
  field :response, 5, type: Google.Protobuf.Any, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Longrunning.GetOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Longrunning.ListOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :page_size, :page_token]

  field :name, 4, type: :string
  field :filter, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Longrunning.ListOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Longrunning.Operation.t()],
          next_page_token: String.t()
        }

  defstruct [:operations, :next_page_token]

  field :operations, 1, repeated: true, type: Google.Longrunning.Operation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Longrunning.CancelOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Longrunning.DeleteOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Longrunning.WaitOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:name, :timeout]

  field :name, 1, type: :string
  field :timeout, 2, type: Google.Protobuf.Duration

  def transform_module(), do: nil
end

defmodule Google.Longrunning.OperationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type: String.t(),
          metadata_type: String.t()
        }

  defstruct [:response_type, :metadata_type]

  field :response_type, 1, type: :string, json_name: "responseType"
  field :metadata_type, 2, type: :string, json_name: "metadataType"

  def transform_module(), do: nil
end

defmodule Google.Longrunning.Operations.Service do
  @moduledoc false
  use GRPC.Service, name: "google.longrunning.Operations"

  rpc :ListOperations,
      Google.Longrunning.ListOperationsRequest,
      Google.Longrunning.ListOperationsResponse

  rpc :GetOperation, Google.Longrunning.GetOperationRequest, Google.Longrunning.Operation

  rpc :DeleteOperation, Google.Longrunning.DeleteOperationRequest, Google.Protobuf.Empty

  rpc :CancelOperation, Google.Longrunning.CancelOperationRequest, Google.Protobuf.Empty

  rpc :WaitOperation, Google.Longrunning.WaitOperationRequest, Google.Longrunning.Operation
end

defmodule Google.Longrunning.Operations.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Longrunning.Operations.Service
end

defmodule Google.Longrunning.PbExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  extend Google.Protobuf.MethodOptions, :operation_info, 1049,
    optional: true,
    type: Google.Longrunning.OperationInfo,
    json_name: "operationInfo"
end
