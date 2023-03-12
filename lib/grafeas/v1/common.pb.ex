defmodule Grafeas.V1.NoteKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NOTE_KIND_UNSPECIFIED, 0
  field :VULNERABILITY, 1
  field :BUILD, 2
  field :IMAGE, 3
  field :PACKAGE, 4
  field :DEPLOYMENT, 5
  field :DISCOVERY, 6
  field :ATTESTATION, 7
  field :UPGRADE, 8
  field :COMPLIANCE, 9
  field :DSSE_ATTESTATION, 10
  field :VULNERABILITY_ASSESSMENT, 11
end

defmodule Grafeas.V1.RelatedUrl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 1, type: :string
  field :label, 2, type: :string
end

defmodule Grafeas.V1.Signature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature, 1, type: :bytes
  field :public_key_id, 2, type: :string, json_name: "publicKeyId"
end

defmodule Grafeas.V1.Envelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :payload, 1, type: :bytes
  field :payload_type, 2, type: :string, json_name: "payloadType"
  field :signatures, 3, repeated: true, type: Grafeas.V1.EnvelopeSignature
end

defmodule Grafeas.V1.EnvelopeSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sig, 1, type: :bytes
  field :keyid, 2, type: :string
end

defmodule Grafeas.V1.FileLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath"
end

defmodule Grafeas.V1.License do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expression, 1, type: :string
  field :comments, 2, type: :string
end

defmodule Grafeas.V1.Digest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :algo, 1, type: :string
  field :digest_bytes, 2, type: :bytes, json_name: "digestBytes"
end