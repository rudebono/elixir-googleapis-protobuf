defmodule Grafeas.V1beta1.NoteKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NOTE_KIND_UNSPECIFIED
          | :VULNERABILITY
          | :BUILD
          | :IMAGE
          | :PACKAGE
          | :DEPLOYMENT
          | :DISCOVERY
          | :ATTESTATION

  field :NOTE_KIND_UNSPECIFIED, 0
  field :VULNERABILITY, 1
  field :BUILD, 2
  field :IMAGE, 3
  field :PACKAGE, 4
  field :DEPLOYMENT, 5
  field :DISCOVERY, 6
  field :ATTESTATION, 7
end
defmodule Grafeas.V1beta1.RelatedUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          label: String.t()
        }

  defstruct url: "",
            label: ""

  field :url, 1, type: :string
  field :label, 2, type: :string
end
defmodule Grafeas.V1beta1.Signature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signature: binary,
          public_key_id: String.t()
        }

  defstruct signature: "",
            public_key_id: ""

  field :signature, 1, type: :bytes
  field :public_key_id, 2, type: :string, json_name: "publicKeyId"
end
