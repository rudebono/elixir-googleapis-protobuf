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
          | :START
          | :COPY_AND_VERIFY
          | :REDIRECT_EVENTUALLY_CONSISTENT_READS
          | :REDIRECT_STRONGLY_CONSISTENT_READS
          | :REDIRECT_WRITES

  field :MIGRATION_STEP_UNSPECIFIED, 0

  field :START, 1

  field :COPY_AND_VERIFY, 2

  field :REDIRECT_EVENTUALLY_CONSISTENT_READS, 3

  field :REDIRECT_STRONGLY_CONSISTENT_READS, 4

  field :REDIRECT_WRITES, 5
end

defmodule Google.Datastore.Admin.V1.MigrationStateEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Datastore.Admin.V1.MigrationState.t()
        }

  defstruct [:state]

  field :state, 1, type: Google.Datastore.Admin.V1.MigrationState, enum: true
end

defmodule Google.Datastore.Admin.V1.MigrationProgressEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step: Google.Datastore.Admin.V1.MigrationStep.t()
        }

  defstruct [:step]

  field :step, 1, type: Google.Datastore.Admin.V1.MigrationStep, enum: true
end
