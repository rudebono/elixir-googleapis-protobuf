defmodule Google.Genomics.V1.ReadGroupSet.InfoEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.ReadGroupSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          dataset_id: String.t(),
          reference_set_id: String.t(),
          name: String.t(),
          filename: String.t(),
          read_groups: [Google.Genomics.V1.ReadGroup.t()],
          info: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [:id, :dataset_id, :reference_set_id, :name, :filename, :read_groups, :info]

  field :id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :reference_set_id, 3, type: :string
  field :name, 4, type: :string
  field :filename, 5, type: :string
  field :read_groups, 6, repeated: true, type: Google.Genomics.V1.ReadGroup
  field :info, 7, repeated: true, type: Google.Genomics.V1.ReadGroupSet.InfoEntry, map: true
end
