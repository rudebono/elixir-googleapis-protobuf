defmodule Google.Datastore.Admin.V1beta1.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPERATION_TYPE_UNSPECIFIED | :EXPORT_ENTITIES | :IMPORT_ENTITIES

  field :OPERATION_TYPE_UNSPECIFIED, 0

  field :EXPORT_ENTITIES, 1

  field :IMPORT_ENTITIES, 2
end

defmodule Google.Datastore.Admin.V1beta1.CommonMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :INITIALIZING
          | :PROCESSING
          | :CANCELLING
          | :FINALIZING
          | :SUCCESSFUL
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :INITIALIZING, 1

  field :PROCESSING, 2

  field :CANCELLING, 3

  field :FINALIZING, 4

  field :SUCCESSFUL, 5

  field :FAILED, 6

  field :CANCELLED, 7
end

defmodule Google.Datastore.Admin.V1beta1.CommonMetadata.LabelsEntry do
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

defmodule Google.Datastore.Admin.V1beta1.CommonMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_type: Google.Datastore.Admin.V1beta1.OperationType.t(),
          labels: %{String.t() => String.t()},
          state: Google.Datastore.Admin.V1beta1.CommonMetadata.State.t()
        }

  defstruct [:start_time, :end_time, :operation_type, :labels, :state]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :operation_type, 3, type: Google.Datastore.Admin.V1beta1.OperationType, enum: true

  field :labels, 4,
    repeated: true,
    type: Google.Datastore.Admin.V1beta1.CommonMetadata.LabelsEntry,
    map: true

  field :state, 5, type: Google.Datastore.Admin.V1beta1.CommonMetadata.State, enum: true
end

defmodule Google.Datastore.Admin.V1beta1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          work_completed: integer,
          work_estimated: integer
        }

  defstruct [:work_completed, :work_estimated]

  field :work_completed, 1, type: :int64
  field :work_estimated, 2, type: :int64
end

defmodule Google.Datastore.Admin.V1beta1.ExportEntitiesRequest.LabelsEntry do
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

defmodule Google.Datastore.Admin.V1beta1.ExportEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          labels: %{String.t() => String.t()},
          entity_filter: Google.Datastore.Admin.V1beta1.EntityFilter.t() | nil,
          output_url_prefix: String.t()
        }

  defstruct [:project_id, :labels, :entity_filter, :output_url_prefix]

  field :project_id, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1beta1.ExportEntitiesRequest.LabelsEntry,
    map: true

  field :entity_filter, 3, type: Google.Datastore.Admin.V1beta1.EntityFilter
  field :output_url_prefix, 4, type: :string
end

defmodule Google.Datastore.Admin.V1beta1.ImportEntitiesRequest.LabelsEntry do
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

defmodule Google.Datastore.Admin.V1beta1.ImportEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          labels: %{String.t() => String.t()},
          input_url: String.t(),
          entity_filter: Google.Datastore.Admin.V1beta1.EntityFilter.t() | nil
        }

  defstruct [:project_id, :labels, :input_url, :entity_filter]

  field :project_id, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1beta1.ImportEntitiesRequest.LabelsEntry,
    map: true

  field :input_url, 3, type: :string
  field :entity_filter, 4, type: Google.Datastore.Admin.V1beta1.EntityFilter
end

defmodule Google.Datastore.Admin.V1beta1.ExportEntitiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_url: String.t()
        }

  defstruct [:output_url]

  field :output_url, 1, type: :string
end

defmodule Google.Datastore.Admin.V1beta1.ExportEntitiesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common: Google.Datastore.Admin.V1beta1.CommonMetadata.t() | nil,
          progress_entities: Google.Datastore.Admin.V1beta1.Progress.t() | nil,
          progress_bytes: Google.Datastore.Admin.V1beta1.Progress.t() | nil,
          entity_filter: Google.Datastore.Admin.V1beta1.EntityFilter.t() | nil,
          output_url_prefix: String.t()
        }

  defstruct [:common, :progress_entities, :progress_bytes, :entity_filter, :output_url_prefix]

  field :common, 1, type: Google.Datastore.Admin.V1beta1.CommonMetadata
  field :progress_entities, 2, type: Google.Datastore.Admin.V1beta1.Progress
  field :progress_bytes, 3, type: Google.Datastore.Admin.V1beta1.Progress
  field :entity_filter, 4, type: Google.Datastore.Admin.V1beta1.EntityFilter
  field :output_url_prefix, 5, type: :string
end

defmodule Google.Datastore.Admin.V1beta1.ImportEntitiesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common: Google.Datastore.Admin.V1beta1.CommonMetadata.t() | nil,
          progress_entities: Google.Datastore.Admin.V1beta1.Progress.t() | nil,
          progress_bytes: Google.Datastore.Admin.V1beta1.Progress.t() | nil,
          entity_filter: Google.Datastore.Admin.V1beta1.EntityFilter.t() | nil,
          input_url: String.t()
        }

  defstruct [:common, :progress_entities, :progress_bytes, :entity_filter, :input_url]

  field :common, 1, type: Google.Datastore.Admin.V1beta1.CommonMetadata
  field :progress_entities, 2, type: Google.Datastore.Admin.V1beta1.Progress
  field :progress_bytes, 3, type: Google.Datastore.Admin.V1beta1.Progress
  field :entity_filter, 4, type: Google.Datastore.Admin.V1beta1.EntityFilter
  field :input_url, 5, type: :string
end

defmodule Google.Datastore.Admin.V1beta1.EntityFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kinds: [String.t()],
          namespace_ids: [String.t()]
        }

  defstruct [:kinds, :namespace_ids]

  field :kinds, 1, repeated: true, type: :string
  field :namespace_ids, 2, repeated: true, type: :string
end

defmodule Google.Datastore.Admin.V1beta1.DatastoreAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.datastore.admin.v1beta1.DatastoreAdmin"

  rpc :ExportEntities,
      Google.Datastore.Admin.V1beta1.ExportEntitiesRequest,
      Google.Longrunning.Operation

  rpc :ImportEntities,
      Google.Datastore.Admin.V1beta1.ImportEntitiesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Datastore.Admin.V1beta1.DatastoreAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Datastore.Admin.V1beta1.DatastoreAdmin.Service
end
