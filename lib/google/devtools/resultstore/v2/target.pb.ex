defmodule Google.Devtools.Resultstore.V2.TargetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TARGET_TYPE_UNSPECIFIED
          | :APPLICATION
          | :BINARY
          | :LIBRARY
          | :PACKAGE
          | :TEST

  field :TARGET_TYPE_UNSPECIFIED, 0

  field :APPLICATION, 1

  field :BINARY, 2

  field :LIBRARY, 3

  field :PACKAGE, 4

  field :TEST, 5
end

defmodule Google.Devtools.Resultstore.V2.TestSize do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TEST_SIZE_UNSPECIFIED | :SMALL | :MEDIUM | :LARGE | :ENORMOUS | :OTHER_SIZE

  field :TEST_SIZE_UNSPECIFIED, 0

  field :SMALL, 1

  field :MEDIUM, 2

  field :LARGE, 3

  field :ENORMOUS, 4

  field :OTHER_SIZE, 5
end

defmodule Google.Devtools.Resultstore.V2.Target.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t(),
          target_id: String.t()
        }

  defstruct [:invocation_id, :target_id]

  field :invocation_id, 1, type: :string
  field :target_id, 2, type: :string
end

defmodule Google.Devtools.Resultstore.V2.Target do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Target.Id.t() | nil,
          status_attributes: Google.Devtools.Resultstore.V2.StatusAttributes.t() | nil,
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          target_attributes: Google.Devtools.Resultstore.V2.TargetAttributes.t() | nil,
          test_attributes: Google.Devtools.Resultstore.V2.TestAttributes.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()],
          visible: boolean
        }

  defstruct [
    :name,
    :id,
    :status_attributes,
    :timing,
    :target_attributes,
    :test_attributes,
    :properties,
    :files,
    :visible
  ]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Target.Id
  field :status_attributes, 3, type: Google.Devtools.Resultstore.V2.StatusAttributes
  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing
  field :target_attributes, 5, type: Google.Devtools.Resultstore.V2.TargetAttributes
  field :test_attributes, 6, type: Google.Devtools.Resultstore.V2.TestAttributes
  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
  field :visible, 10, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.TargetAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Resultstore.V2.TargetType.t(),
          language: Google.Devtools.Resultstore.V2.Language.t(),
          tags: [String.t()]
        }

  defstruct [:type, :language, :tags]

  field :type, 1, type: Google.Devtools.Resultstore.V2.TargetType, enum: true
  field :language, 2, type: Google.Devtools.Resultstore.V2.Language, enum: true
  field :tags, 3, repeated: true, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TestAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          size: Google.Devtools.Resultstore.V2.TestSize.t()
        }

  defstruct [:size]

  field :size, 1, type: Google.Devtools.Resultstore.V2.TestSize, enum: true
end
