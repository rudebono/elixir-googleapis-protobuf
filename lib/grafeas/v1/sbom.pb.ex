defmodule Grafeas.V1.SBOMReferenceNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :format, 1, type: :string
  field :version, 2, type: :string
end

defmodule Grafeas.V1.SBOMReferenceOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :payload, 1, type: Grafeas.V1.SbomReferenceIntotoPayload
  field :payload_type, 2, type: :string, json_name: "payloadType"
  field :signatures, 3, repeated: true, type: Grafeas.V1.EnvelopeSignature
end

defmodule Grafeas.V1.SbomReferenceIntotoPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string, json_name: "_type"
  field :predicate_type, 2, type: :string, json_name: "predicateType"
  field :subject, 3, repeated: true, type: Grafeas.V1.Subject
  field :predicate, 4, type: Grafeas.V1.SbomReferenceIntotoPredicate
end

defmodule Grafeas.V1.SbomReferenceIntotoPredicate.DigestEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.SbomReferenceIntotoPredicate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :referrer_id, 1, type: :string, json_name: "referrerId"
  field :location, 2, type: :string
  field :mime_type, 3, type: :string, json_name: "mimeType"

  field :digest, 4,
    repeated: true,
    type: Grafeas.V1.SbomReferenceIntotoPredicate.DigestEntry,
    map: true
end