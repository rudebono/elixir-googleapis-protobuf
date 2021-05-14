defmodule Grafeas.V1.BuildNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builder_version: String.t()
        }

  defstruct [:builder_version]

  field :builder_version, 1, type: :string
end

defmodule Grafeas.V1.BuildOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provenance: Grafeas.V1.BuildProvenance.t() | nil,
          provenance_bytes: String.t()
        }

  defstruct [:provenance, :provenance_bytes]

  field :provenance, 1, type: Grafeas.V1.BuildProvenance
  field :provenance_bytes, 2, type: :string
end
