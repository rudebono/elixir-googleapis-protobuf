defmodule Google.Cloud.Sql.V1.SqlOperationsGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: String.t(),
          project: String.t()
        }

  defstruct [:operation, :project]

  field :operation, 1, type: :string
  field :project, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlOperationsListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          max_results: non_neg_integer,
          page_token: String.t(),
          project: String.t()
        }

  defstruct [:instance, :max_results, :page_token, :project]

  field :instance, 1, type: :string
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :project, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.OperationsListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.Operation.t()],
          next_page_token: String.t()
        }

  defstruct [:kind, :items, :next_page_token]

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Operation
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Sql.V1.SqlOperationsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlOperationsService"

  rpc :Get, Google.Cloud.Sql.V1.SqlOperationsGetRequest, Google.Cloud.Sql.V1.Operation

  rpc :List,
      Google.Cloud.Sql.V1.SqlOperationsListRequest,
      Google.Cloud.Sql.V1.OperationsListResponse
end

defmodule Google.Cloud.Sql.V1.SqlOperationsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlOperationsService.Service
end
