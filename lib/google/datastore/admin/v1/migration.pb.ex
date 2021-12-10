defmodule Google.Datastore.Admin.V1.MigrationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MIGRATION_STATE_UNSPECIFIED | :RUNNING | :PAUSED | :COMPLETE

  field :MIGRATION_STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :COMPLETE, 3
end
defmodule Google.Datastore.Admin.V1.MigrationStep do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MIGRATION_STEP_UNSPECIFIED
          | :PREPARE
          | :START
          | :APPLY_WRITES_SYNCHRONOUSLY
          | :COPY_AND_VERIFY
          | :REDIRECT_EVENTUALLY_CONSISTENT_READS
          | :REDIRECT_STRONGLY_CONSISTENT_READS
          | :REDIRECT_WRITES

  field :MIGRATION_STEP_UNSPECIFIED, 0
  field :PREPARE, 6
  field :START, 1
  field :APPLY_WRITES_SYNCHRONOUSLY, 7
  field :COPY_AND_VERIFY, 2
  field :REDIRECT_EVENTUALLY_CONSISTENT_READS, 3
  field :REDIRECT_STRONGLY_CONSISTENT_READS, 4
  field :REDIRECT_WRITES, 5
end
defmodule Google.Datastore.Admin.V1.MigrationProgressEvent.ConcurrencyMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONCURRENCY_MODE_UNSPECIFIED | :PESSIMISTIC | :OPTIMISTIC

  field :CONCURRENCY_MODE_UNSPECIFIED, 0
  field :PESSIMISTIC, 1
  field :OPTIMISTIC, 2
end
defmodule Google.Datastore.Admin.V1.MigrationStateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Datastore.Admin.V1.MigrationState.t()
        }

  defstruct state: :MIGRATION_STATE_UNSPECIFIED

  field :state, 1, type: Google.Datastore.Admin.V1.MigrationState, enum: true
end
defmodule Google.Datastore.Admin.V1.MigrationProgressEvent.PrepareStepDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          concurrency_mode: Google.Datastore.Admin.V1.MigrationProgressEvent.ConcurrencyMode.t()
        }

  defstruct concurrency_mode: :CONCURRENCY_MODE_UNSPECIFIED

  field :concurrency_mode, 1,
    type: Google.Datastore.Admin.V1.MigrationProgressEvent.ConcurrencyMode,
    json_name: "concurrencyMode",
    enum: true
end
defmodule Google.Datastore.Admin.V1.MigrationProgressEvent.RedirectWritesStepDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          concurrency_mode: Google.Datastore.Admin.V1.MigrationProgressEvent.ConcurrencyMode.t()
        }

  defstruct concurrency_mode: :CONCURRENCY_MODE_UNSPECIFIED

  field :concurrency_mode, 1,
    type: Google.Datastore.Admin.V1.MigrationProgressEvent.ConcurrencyMode,
    json_name: "concurrencyMode",
    enum: true
end
defmodule Google.Datastore.Admin.V1.MigrationProgressEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_details:
            {:prepare_step_details,
             Google.Datastore.Admin.V1.MigrationProgressEvent.PrepareStepDetails.t() | nil}
            | {:redirect_writes_step_details,
               Google.Datastore.Admin.V1.MigrationProgressEvent.RedirectWritesStepDetails.t()
               | nil},
          step: Google.Datastore.Admin.V1.MigrationStep.t()
        }

  defstruct step_details: nil,
            step: :MIGRATION_STEP_UNSPECIFIED

  oneof :step_details, 0

  field :step, 1, type: Google.Datastore.Admin.V1.MigrationStep, enum: true

  field :prepare_step_details, 2,
    type: Google.Datastore.Admin.V1.MigrationProgressEvent.PrepareStepDetails,
    json_name: "prepareStepDetails",
    oneof: 0

  field :redirect_writes_step_details, 3,
    type: Google.Datastore.Admin.V1.MigrationProgressEvent.RedirectWritesStepDetails,
    json_name: "redirectWritesStepDetails",
    oneof: 0
end
