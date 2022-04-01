defmodule Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_info: Google.Rpc.ResourceInfo.t() | nil,
          error_details: [Google.Cloud.Bigquery.Migration.V2.ErrorDetail.t()],
          error_count: integer
        }

  defstruct resource_info: nil,
            error_details: [],
            error_count: 0

  field :resource_info, 1,
    type: Google.Rpc.ResourceInfo,
    json_name: "resourceInfo",
    deprecated: false

  field :error_details, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ErrorDetail,
    json_name: "errorDetails",
    deprecated: false

  field :error_count, 3, type: :int32, json_name: "errorCount", deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.ErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Cloud.Bigquery.Migration.V2.ErrorLocation.t() | nil,
          error_info: Google.Rpc.ErrorInfo.t() | nil
        }

  defstruct location: nil,
            error_info: nil

  field :location, 1, type: Google.Cloud.Bigquery.Migration.V2.ErrorLocation, deprecated: false
  field :error_info, 2, type: Google.Rpc.ErrorInfo, json_name: "errorInfo", deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.ErrorLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          line: integer,
          column: integer
        }

  defstruct line: 0,
            column: 0

  field :line, 1, type: :int32, deprecated: false
  field :column, 2, type: :int32, deprecated: false
end
