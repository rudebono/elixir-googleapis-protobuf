defmodule Google.Api.BackendRule.PathTranslation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PATH_TRANSLATION_UNSPECIFIED, 0
  field :CONSTANT_ADDRESS, 1
  field :APPEND_PATH_TO_ADDRESS, 2
end

defmodule Google.Api.Backend do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Api.BackendRule
end

defmodule Google.Api.BackendRule.OverridesByRequestProtocolEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Api.BackendRule
end

defmodule Google.Api.BackendRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :authentication, 0

  field :selector, 1, type: :string
  field :address, 2, type: :string
  field :deadline, 3, type: :double
  field :min_deadline, 4, type: :double, json_name: "minDeadline", deprecated: true
  field :operation_deadline, 5, type: :double, json_name: "operationDeadline"

  field :path_translation, 6,
    type: Google.Api.BackendRule.PathTranslation,
    json_name: "pathTranslation",
    enum: true

  field :jwt_audience, 7, type: :string, json_name: "jwtAudience", oneof: 0
  field :disable_auth, 8, type: :bool, json_name: "disableAuth", oneof: 0
  field :protocol, 9, type: :string

  field :overrides_by_request_protocol, 10,
    repeated: true,
    type: Google.Api.BackendRule.OverridesByRequestProtocolEntry,
    json_name: "overridesByRequestProtocol",
    map: true
end
