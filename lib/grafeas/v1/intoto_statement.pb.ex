defmodule Grafeas.V1.InTotoStatement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predicate:
            {:provenance, Grafeas.V1.InTotoProvenance.t() | nil}
            | {:slsa_provenance, Grafeas.V1.SlsaProvenance.t() | nil},
          type: String.t(),
          subject: [Grafeas.V1.Subject.t()],
          predicate_type: String.t()
        }

  defstruct predicate: nil,
            type: "",
            subject: [],
            predicate_type: ""

  oneof :predicate, 0

  field :type, 1, type: :string, json_name: "_type"
  field :subject, 2, repeated: true, type: Grafeas.V1.Subject
  field :predicate_type, 3, type: :string, json_name: "predicateType"
  field :provenance, 4, type: Grafeas.V1.InTotoProvenance, oneof: 0

  field :slsa_provenance, 5,
    type: Grafeas.V1.SlsaProvenance,
    json_name: "slsaProvenance",
    oneof: 0
end
defmodule Grafeas.V1.Subject.DigestEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Grafeas.V1.Subject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          digest: %{String.t() => String.t()}
        }

  defstruct name: "",
            digest: %{}

  field :name, 1, type: :string
  field :digest, 2, repeated: true, type: Grafeas.V1.Subject.DigestEntry, map: true
end
