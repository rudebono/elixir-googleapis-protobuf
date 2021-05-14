defmodule Google.Api.ResourceDescriptor.History do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HISTORY_UNSPECIFIED | :ORIGINALLY_SINGLE_PATTERN | :FUTURE_MULTI_PATTERN

  field :HISTORY_UNSPECIFIED, 0

  field :ORIGINALLY_SINGLE_PATTERN, 1

  field :FUTURE_MULTI_PATTERN, 2
end

defmodule Google.Api.ResourceDescriptor.Style do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STYLE_UNSPECIFIED | :DECLARATIVE_FRIENDLY

  field :STYLE_UNSPECIFIED, 0

  field :DECLARATIVE_FRIENDLY, 1
end

defmodule Google.Api.ResourceDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          pattern: [String.t()],
          name_field: String.t(),
          history: Google.Api.ResourceDescriptor.History.t(),
          plural: String.t(),
          singular: String.t(),
          style: [[Google.Api.ResourceDescriptor.Style.t()]]
        }

  defstruct [:type, :pattern, :name_field, :history, :plural, :singular, :style]

  field :type, 1, type: :string
  field :pattern, 2, repeated: true, type: :string
  field :name_field, 3, type: :string
  field :history, 4, type: Google.Api.ResourceDescriptor.History, enum: true
  field :plural, 5, type: :string
  field :singular, 6, type: :string
  field :style, 10, repeated: true, type: Google.Api.ResourceDescriptor.Style, enum: true
end

defmodule Google.Api.ResourceReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          child_type: String.t()
        }

  defstruct [:type, :child_type]

  field :type, 1, type: :string
  field :child_type, 2, type: :string
end
