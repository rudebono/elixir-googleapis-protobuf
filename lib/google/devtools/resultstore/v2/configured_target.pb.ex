defmodule Google.Devtools.Resultstore.V2.ConfiguredTarget.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t(),
          target_id: String.t(),
          configuration_id: String.t()
        }

  defstruct [:invocation_id, :target_id, :configuration_id]

  field :invocation_id, 1, type: :string
  field :target_id, 2, type: :string
  field :configuration_id, 3, type: :string
end

defmodule Google.Devtools.Resultstore.V2.ConfiguredTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id.t() | nil,
          status_attributes: Google.Devtools.Resultstore.V2.StatusAttributes.t() | nil,
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          test_attributes: Google.Devtools.Resultstore.V2.ConfiguredTestAttributes.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()]
        }

  defstruct [:name, :id, :status_attributes, :timing, :test_attributes, :properties, :files]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id
  field :status_attributes, 3, type: Google.Devtools.Resultstore.V2.StatusAttributes
  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing
  field :test_attributes, 6, type: Google.Devtools.Resultstore.V2.ConfiguredTestAttributes
  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.ConfiguredTestAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_run_count: integer,
          total_shard_count: integer,
          timeout_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:total_run_count, :total_shard_count, :timeout_duration]

  field :total_run_count, 2, type: :int32
  field :total_shard_count, 3, type: :int32
  field :timeout_duration, 5, type: Google.Protobuf.Duration
end
