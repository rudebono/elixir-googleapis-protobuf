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
          provenance_bytes: String.t(),
          intoto_provenance: Grafeas.V1.InTotoProvenance.t() | nil,
          intoto_statement: Grafeas.V1.InTotoStatement.t() | nil
        }

  defstruct [:provenance, :provenance_bytes, :intoto_provenance, :intoto_statement]

  field :provenance, 1, type: Grafeas.V1.BuildProvenance
  field :provenance_bytes, 2, type: :string
  field :intoto_provenance, 3, type: Grafeas.V1.InTotoProvenance
  field :intoto_statement, 4, type: Grafeas.V1.InTotoStatement
end
