defmodule Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :REASON_UNSPECIFIED | :RATE_LIMIT | :NOT_CONSUMED

  field :REASON_UNSPECIFIED, 0
  field :RATE_LIMIT, 1
  field :NOT_CONSUMED, 2
end

defmodule Google.Logging.V2.DeleteLogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_name: String.t()
        }

  defstruct [:log_name]

  field :log_name, 1, type: :string, json_name: "logName"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.WriteLogEntriesRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.WriteLogEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_name: String.t(),
          resource: Google.Api.MonitoredResource.t() | nil,
          labels: %{String.t() => String.t()},
          entries: [Google.Logging.V2.LogEntry.t()],
          partial_success: boolean,
          dry_run: boolean
        }

  defstruct [:log_name, :resource, :labels, :entries, :partial_success, :dry_run]

  field :log_name, 1, type: :string, json_name: "logName"
  field :resource, 2, type: Google.Api.MonitoredResource

  field :labels, 3,
    repeated: true,
    type: Google.Logging.V2.WriteLogEntriesRequest.LabelsEntry,
    map: true

  field :entries, 4, repeated: true, type: Google.Logging.V2.LogEntry
  field :partial_success, 5, type: :bool, json_name: "partialSuccess"
  field :dry_run, 6, type: :bool, json_name: "dryRun"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.WriteLogEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.WriteLogEntriesPartialErrors.LogEntryErrorsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: Google.Rpc.Status.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.WriteLogEntriesPartialErrors do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_entry_errors: %{integer => Google.Rpc.Status.t() | nil}
        }

  defstruct [:log_entry_errors]

  field :log_entry_errors, 1,
    repeated: true,
    type: Google.Logging.V2.WriteLogEntriesPartialErrors.LogEntryErrorsEntry,
    json_name: "logEntryErrors",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()],
          filter: String.t(),
          order_by: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:resource_names, :filter, :order_by, :page_size, :page_token]

  field :resource_names, 8, repeated: true, type: :string, json_name: "resourceNames"
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Logging.V2.LogEntry.t()],
          next_page_token: String.t()
        }

  defstruct [:entries, :next_page_token]

  field :entries, 1, repeated: true, type: Google.Logging.V2.LogEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListMonitoredResourceDescriptorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListMonitoredResourceDescriptorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_descriptors: [Google.Api.MonitoredResourceDescriptor.t()],
          next_page_token: String.t()
        }

  defstruct [:resource_descriptors, :next_page_token]

  field :resource_descriptors, 1,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "resourceDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          resource_names: [String.t()]
        }

  defstruct [:parent, :page_size, :page_token, :resource_names]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :resource_names, 8, repeated: true, type: :string, json_name: "resourceNames"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_names: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:log_names, :next_page_token]

  field :log_names, 3, repeated: true, type: :string, json_name: "logNames"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.TailLogEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()],
          filter: String.t(),
          buffer_window: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:resource_names, :filter, :buffer_window]

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
  field :filter, 2, type: :string
  field :buffer_window, 3, type: Google.Protobuf.Duration, json_name: "bufferWindow"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.Reason.t(),
          suppressed_count: integer
        }

  defstruct [:reason, :suppressed_count]

  field :reason, 1,
    type: Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.Reason,
    enum: true

  field :suppressed_count, 2, type: :int32, json_name: "suppressedCount"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.TailLogEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Logging.V2.LogEntry.t()],
          suppression_info: [Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo.t()]
        }

  defstruct [:entries, :suppression_info]

  field :entries, 1, repeated: true, type: Google.Logging.V2.LogEntry

  field :suppression_info, 2,
    repeated: true,
    type: Google.Logging.V2.TailLogEntriesResponse.SuppressionInfo,
    json_name: "suppressionInfo"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.LoggingServiceV2.Service do
  @moduledoc false
  use GRPC.Service, name: "google.logging.v2.LoggingServiceV2"

  rpc :DeleteLog, Google.Logging.V2.DeleteLogRequest, Google.Protobuf.Empty

  rpc :WriteLogEntries,
      Google.Logging.V2.WriteLogEntriesRequest,
      Google.Logging.V2.WriteLogEntriesResponse

  rpc :ListLogEntries,
      Google.Logging.V2.ListLogEntriesRequest,
      Google.Logging.V2.ListLogEntriesResponse

  rpc :ListMonitoredResourceDescriptors,
      Google.Logging.V2.ListMonitoredResourceDescriptorsRequest,
      Google.Logging.V2.ListMonitoredResourceDescriptorsResponse

  rpc :ListLogs, Google.Logging.V2.ListLogsRequest, Google.Logging.V2.ListLogsResponse

  rpc :TailLogEntries,
      stream(Google.Logging.V2.TailLogEntriesRequest),
      stream(Google.Logging.V2.TailLogEntriesResponse)
end

defmodule Google.Logging.V2.LoggingServiceV2.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Logging.V2.LoggingServiceV2.Service
end
