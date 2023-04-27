defmodule Grafeas.V1.DSSEAttestationNote.DSSEHint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :human_readable_name, 1, type: :string, json_name: "humanReadableName"
end

defmodule Grafeas.V1.DSSEAttestationNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hint, 1, type: Grafeas.V1.DSSEAttestationNote.DSSEHint
end

defmodule Grafeas.V1.DSSEAttestationOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :decoded_payload, 0

  field :envelope, 1, type: Grafeas.V1.Envelope
  field :statement, 2, type: Grafeas.V1.InTotoStatement, oneof: 0
end