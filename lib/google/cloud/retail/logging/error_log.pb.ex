defmodule Google.Cloud.Retail.Logging.ServiceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t()
        }

  defstruct [:service]

  field :service, 1, type: :string
end

defmodule Google.Cloud.Retail.Logging.HttpRequestContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_status_code: integer
        }

  defstruct [:response_status_code]

  field :response_status_code, 1, type: :int32
end

defmodule Google.Cloud.Retail.Logging.SourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_name: String.t()
        }

  defstruct [:function_name]

  field :function_name, 1, type: :string
end

defmodule Google.Cloud.Retail.Logging.ErrorContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_request: Google.Cloud.Retail.Logging.HttpRequestContext.t() | nil,
          report_location: Google.Cloud.Retail.Logging.SourceLocation.t() | nil
        }

  defstruct [:http_request, :report_location]

  field :http_request, 1, type: Google.Cloud.Retail.Logging.HttpRequestContext
  field :report_location, 2, type: Google.Cloud.Retail.Logging.SourceLocation
end

defmodule Google.Cloud.Retail.Logging.ImportErrorContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          line_content: {atom, any},
          operation_name: String.t(),
          gcs_path: String.t(),
          line_number: String.t()
        }

  defstruct [:line_content, :operation_name, :gcs_path, :line_number]

  oneof :line_content, 0
  field :operation_name, 1, type: :string
  field :gcs_path, 2, type: :string
  field :line_number, 3, type: :string
  field :catalog_item, 4, type: :string, oneof: 0
  field :product, 5, type: :string, oneof: 0
  field :user_event, 6, type: :string, oneof: 0
end

defmodule Google.Cloud.Retail.Logging.ErrorLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_context: Google.Cloud.Retail.Logging.ServiceContext.t() | nil,
          context: Google.Cloud.Retail.Logging.ErrorContext.t() | nil,
          message: String.t(),
          status: Google.Rpc.Status.t() | nil,
          request_payload: Google.Protobuf.Struct.t() | nil,
          response_payload: Google.Protobuf.Struct.t() | nil,
          import_payload: Google.Cloud.Retail.Logging.ImportErrorContext.t() | nil
        }

  defstruct [
    :service_context,
    :context,
    :message,
    :status,
    :request_payload,
    :response_payload,
    :import_payload
  ]

  field :service_context, 1, type: Google.Cloud.Retail.Logging.ServiceContext
  field :context, 2, type: Google.Cloud.Retail.Logging.ErrorContext
  field :message, 3, type: :string
  field :status, 4, type: Google.Rpc.Status
  field :request_payload, 5, type: Google.Protobuf.Struct
  field :response_payload, 6, type: Google.Protobuf.Struct
  field :import_payload, 7, type: Google.Cloud.Retail.Logging.ImportErrorContext
end
