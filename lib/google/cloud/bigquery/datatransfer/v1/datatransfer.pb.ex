defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :STRING
          | :INTEGER
          | :DOUBLE
          | :BOOLEAN
          | :RECORD
          | :PLUS_PAGE

  field :TYPE_UNSPECIFIED, 0

  field :STRING, 1

  field :INTEGER, 2

  field :DOUBLE, 3

  field :BOOLEAN, 4

  field :RECORD, 5

  field :PLUS_PAGE, 6
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataSource.AuthorizationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AUTHORIZATION_TYPE_UNSPECIFIED
          | :AUTHORIZATION_CODE
          | :GOOGLE_PLUS_AUTHORIZATION_CODE
          | :FIRST_PARTY_OAUTH

  field :AUTHORIZATION_TYPE_UNSPECIFIED, 0

  field :AUTHORIZATION_CODE, 1

  field :GOOGLE_PLUS_AUTHORIZATION_CODE, 2

  field :FIRST_PARTY_OAUTH, 3
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataSource.DataRefreshType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_REFRESH_TYPE_UNSPECIFIED | :SLIDING_WINDOW | :CUSTOM_SLIDING_WINDOW

  field :DATA_REFRESH_TYPE_UNSPECIFIED, 0

  field :SLIDING_WINDOW, 1

  field :CUSTOM_SLIDING_WINDOW, 2
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsRequest.RunAttempt do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RUN_ATTEMPT_UNSPECIFIED | :LATEST

  field :RUN_ATTEMPT_UNSPECIFIED, 0

  field :LATEST, 1
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          param_id: String.t(),
          display_name: String.t(),
          description: String.t(),
          type: Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter.Type.t(),
          required: boolean,
          repeated: boolean,
          validation_regex: String.t(),
          allowed_values: [String.t()],
          min_value: Google.Protobuf.DoubleValue.t() | nil,
          max_value: Google.Protobuf.DoubleValue.t() | nil,
          fields: [Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter.t()],
          validation_description: String.t(),
          validation_help_url: String.t(),
          immutable: boolean,
          recurse: boolean,
          deprecated: boolean
        }

  defstruct [
    :param_id,
    :display_name,
    :description,
    :type,
    :required,
    :repeated,
    :validation_regex,
    :allowed_values,
    :min_value,
    :max_value,
    :fields,
    :validation_description,
    :validation_help_url,
    :immutable,
    :recurse,
    :deprecated
  ]

  field :param_id, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :type, 4, type: Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter.Type, enum: true
  field :required, 5, type: :bool
  field :repeated, 6, type: :bool
  field :validation_regex, 7, type: :string
  field :allowed_values, 8, repeated: true, type: :string
  field :min_value, 9, type: Google.Protobuf.DoubleValue
  field :max_value, 10, type: Google.Protobuf.DoubleValue

  field :fields, 11,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter

  field :validation_description, 12, type: :string
  field :validation_help_url, 13, type: :string
  field :immutable, 14, type: :bool
  field :recurse, 15, type: :bool
  field :deprecated, 20, type: :bool
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data_source_id: String.t(),
          display_name: String.t(),
          description: String.t(),
          client_id: String.t(),
          scopes: [String.t()],
          transfer_type: Google.Cloud.Bigquery.Datatransfer.V1.TransferType.t(),
          supports_multiple_transfers: boolean,
          update_deadline_seconds: integer,
          default_schedule: String.t(),
          supports_custom_schedule: boolean,
          parameters: [Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter.t()],
          help_url: String.t(),
          authorization_type:
            Google.Cloud.Bigquery.Datatransfer.V1.DataSource.AuthorizationType.t(),
          data_refresh_type: Google.Cloud.Bigquery.Datatransfer.V1.DataSource.DataRefreshType.t(),
          default_data_refresh_window_days: integer,
          manual_runs_disabled: boolean,
          minimum_schedule_interval: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :name,
    :data_source_id,
    :display_name,
    :description,
    :client_id,
    :scopes,
    :transfer_type,
    :supports_multiple_transfers,
    :update_deadline_seconds,
    :default_schedule,
    :supports_custom_schedule,
    :parameters,
    :help_url,
    :authorization_type,
    :data_refresh_type,
    :default_data_refresh_window_days,
    :manual_runs_disabled,
    :minimum_schedule_interval
  ]

  field :name, 1, type: :string
  field :data_source_id, 2, type: :string
  field :display_name, 3, type: :string
  field :description, 4, type: :string
  field :client_id, 5, type: :string
  field :scopes, 6, repeated: true, type: :string

  field :transfer_type, 7,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferType,
    deprecated: true,
    enum: true

  field :supports_multiple_transfers, 8, type: :bool, deprecated: true
  field :update_deadline_seconds, 9, type: :int32
  field :default_schedule, 10, type: :string
  field :supports_custom_schedule, 11, type: :bool

  field :parameters, 12,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.DataSourceParameter

  field :help_url, 13, type: :string

  field :authorization_type, 14,
    type: Google.Cloud.Bigquery.Datatransfer.V1.DataSource.AuthorizationType,
    enum: true

  field :data_refresh_type, 15,
    type: Google.Cloud.Bigquery.Datatransfer.V1.DataSource.DataRefreshType,
    enum: true

  field :default_data_refresh_window_days, 16, type: :int32
  field :manual_runs_disabled, 17, type: :bool
  field :minimum_schedule_interval, 18, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.GetDataSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListDataSourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListDataSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sources: [Google.Cloud.Bigquery.Datatransfer.V1.DataSource.t()],
          next_page_token: String.t()
        }

  defstruct [:data_sources, :next_page_token]

  field :data_sources, 1, repeated: true, type: Google.Cloud.Bigquery.Datatransfer.V1.DataSource
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.CreateTransferConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          transfer_config: Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig.t() | nil,
          authorization_code: String.t(),
          version_info: String.t(),
          service_account_name: String.t()
        }

  defstruct [:parent, :transfer_config, :authorization_code, :version_info, :service_account_name]

  field :parent, 1, type: :string
  field :transfer_config, 2, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig
  field :authorization_code, 3, type: :string
  field :version_info, 5, type: :string
  field :service_account_name, 6, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.UpdateTransferConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_config: Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig.t() | nil,
          authorization_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          version_info: String.t(),
          service_account_name: String.t()
        }

  defstruct [
    :transfer_config,
    :authorization_code,
    :update_mask,
    :version_info,
    :service_account_name
  ]

  field :transfer_config, 1, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig
  field :authorization_code, 3, type: :string
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :version_info, 5, type: :string
  field :service_account_name, 6, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.GetTransferConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DeleteTransferConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.GetTransferRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DeleteTransferRunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          data_source_ids: [String.t()],
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :data_source_ids, :page_token, :page_size]

  field :parent, 1, type: :string
  field :data_source_ids, 2, repeated: true, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_configs: [Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:transfer_configs, :next_page_token]

  field :transfer_configs, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          states: [[Google.Cloud.Bigquery.Datatransfer.V1.TransferState.t()]],
          page_token: String.t(),
          page_size: integer,
          run_attempt:
            Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsRequest.RunAttempt.t()
        }

  defstruct [:parent, :states, :page_token, :page_size, :run_attempt]

  field :parent, 1, type: :string

  field :states, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferState,
    enum: true

  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32

  field :run_attempt, 5,
    type: Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsRequest.RunAttempt,
    enum: true
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_runs: [Google.Cloud.Bigquery.Datatransfer.V1.TransferRun.t()],
          next_page_token: String.t()
        }

  defstruct [:transfer_runs, :next_page_token]

  field :transfer_runs, 1, repeated: true, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferRun
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferLogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          message_types: [
            [Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity.t()]
          ]
        }

  defstruct [:parent, :page_token, :page_size, :message_types]

  field :parent, 1, type: :string
  field :page_token, 4, type: :string
  field :page_size, 5, type: :int32

  field :message_types, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity,
    enum: true
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ListTransferLogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_messages: [Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.t()],
          next_page_token: String.t()
        }

  defstruct [:transfer_messages, :next_page_token]

  field :transfer_messages, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.CheckValidCredsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.CheckValidCredsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          has_valid_creds: boolean
        }

  defstruct [:has_valid_creds]

  field :has_valid_creds, 1, type: :bool
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ScheduleTransferRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:parent, :start_time, :end_time]

  field :parent, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ScheduleTransferRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runs: [Google.Cloud.Bigquery.Datatransfer.V1.TransferRun.t()]
        }

  defstruct [:runs]

  field :runs, 1, repeated: true, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferRun
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsRequest.TimeRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: {atom, any},
          parent: String.t()
        }

  defstruct [:time, :parent]

  oneof :time, 0
  field :parent, 1, type: :string

  field :requested_time_range, 3,
    type: Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsRequest.TimeRange,
    oneof: 0

  field :requested_run_time, 4, type: Google.Protobuf.Timestamp, oneof: 0
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runs: [Google.Cloud.Bigquery.Datatransfer.V1.TransferRun.t()]
        }

  defstruct [:runs]

  field :runs, 1, repeated: true, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferRun
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataTransferService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.datatransfer.v1.DataTransferService"

  rpc :GetDataSource,
      Google.Cloud.Bigquery.Datatransfer.V1.GetDataSourceRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.DataSource

  rpc :ListDataSources,
      Google.Cloud.Bigquery.Datatransfer.V1.ListDataSourcesRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.ListDataSourcesResponse

  rpc :CreateTransferConfig,
      Google.Cloud.Bigquery.Datatransfer.V1.CreateTransferConfigRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig

  rpc :UpdateTransferConfig,
      Google.Cloud.Bigquery.Datatransfer.V1.UpdateTransferConfigRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig

  rpc :DeleteTransferConfig,
      Google.Cloud.Bigquery.Datatransfer.V1.DeleteTransferConfigRequest,
      Google.Protobuf.Empty

  rpc :GetTransferConfig,
      Google.Cloud.Bigquery.Datatransfer.V1.GetTransferConfigRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig

  rpc :ListTransferConfigs,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferConfigsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferConfigsResponse

  rpc :ScheduleTransferRuns,
      Google.Cloud.Bigquery.Datatransfer.V1.ScheduleTransferRunsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.ScheduleTransferRunsResponse

  rpc :StartManualTransferRuns,
      Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.StartManualTransferRunsResponse

  rpc :GetTransferRun,
      Google.Cloud.Bigquery.Datatransfer.V1.GetTransferRunRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.TransferRun

  rpc :DeleteTransferRun,
      Google.Cloud.Bigquery.Datatransfer.V1.DeleteTransferRunRequest,
      Google.Protobuf.Empty

  rpc :ListTransferRuns,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferRunsResponse

  rpc :ListTransferLogs,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferLogsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.ListTransferLogsResponse

  rpc :CheckValidCreds,
      Google.Cloud.Bigquery.Datatransfer.V1.CheckValidCredsRequest,
      Google.Cloud.Bigquery.Datatransfer.V1.CheckValidCredsResponse
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.DataTransferService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Datatransfer.V1.DataTransferService.Service
end
