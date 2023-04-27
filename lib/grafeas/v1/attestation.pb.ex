defmodule Grafeas.V1.AttestationNote.Hint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :human_readable_name, 1, type: :string, json_name: "humanReadableName"
end

defmodule Grafeas.V1.AttestationNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hint, 1, type: Grafeas.V1.AttestationNote.Hint
end

defmodule Grafeas.V1.Jwt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :compact_jwt, 1, type: :string, json_name: "compactJwt"
end

defmodule Grafeas.V1.AttestationOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serialized_payload, 1, type: :bytes, json_name: "serializedPayload"
  field :signatures, 2, repeated: true, type: Grafeas.V1.Signature
  field :jwts, 3, repeated: true, type: Grafeas.V1.Jwt
end