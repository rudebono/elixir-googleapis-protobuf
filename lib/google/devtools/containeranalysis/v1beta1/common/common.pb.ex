defmodule Grafeas.V1beta1.NoteKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :url, 1, type: :string
  field :label, 2, type: :string
end

defmodule Grafeas.V1beta1.Signature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :signature, 1, type: :bytes
  field :public_key_id, 2, type: :string, json_name: "publicKeyId"
end
