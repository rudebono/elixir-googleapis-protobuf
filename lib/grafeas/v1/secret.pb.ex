defmodule Grafeas.V1.SecretKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SECRET_KIND_UNSPECIFIED, 0
  field :SECRET_KIND_UNKNOWN, 1
  field :SECRET_KIND_GCP_SERVICE_ACCOUNT_KEY, 2
end

defmodule Grafeas.V1.SecretStatus.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VALID, 2
  field :INVALID, 3
end

defmodule Grafeas.V1.SecretNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Grafeas.V1.SecretOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: Grafeas.V1.SecretKind, enum: true, deprecated: false
  field :locations, 2, repeated: true, type: Grafeas.V1.SecretLocation, deprecated: false
  field :statuses, 3, repeated: true, type: Grafeas.V1.SecretStatus, deprecated: false
end

defmodule Grafeas.V1.SecretLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :location, 0

  field :file_location, 1, type: Grafeas.V1.FileLocation, json_name: "fileLocation", oneof: 0
end

defmodule Grafeas.V1.SecretStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Grafeas.V1.SecretStatus.Status, enum: true, deprecated: false

  field :update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :message, 3, type: :string, deprecated: false
end
