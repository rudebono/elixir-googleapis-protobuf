defmodule Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONSTRAINT_DEFAULT_UNSPECIFIED | :ALLOW | :DENY

  field :CONSTRAINT_DEFAULT_UNSPECIFIED, 0

  field :ALLOW, 1

  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.ListConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          supports_in: boolean,
          supports_under: boolean
        }

  defstruct [:supports_in, :supports_under]

  field :supports_in, 1, type: :bool
  field :supports_under, 2, type: :bool
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.BooleanConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          constraint_type: {atom, any},
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          constraint_default: Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault.t()
        }

  defstruct [:constraint_type, :name, :display_name, :description, :constraint_default]

  oneof :constraint_type, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string

  field :constraint_default, 4,
    type: Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault,
    enum: true

  field :list_constraint, 5, type: Google.Cloud.Orgpolicy.V2.Constraint.ListConstraint, oneof: 0

  field :boolean_constraint, 6,
    type: Google.Cloud.Orgpolicy.V2.Constraint.BooleanConstraint,
    oneof: 0
end
