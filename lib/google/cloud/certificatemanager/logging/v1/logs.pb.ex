defmodule Google.Cloud.Certificatemanager.Logging.V1.CertificatesExpiry.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CLOSE_TO_EXPIRY, 1
  field :EXPIRED, 2
end

defmodule Google.Cloud.Certificatemanager.Logging.V1.CertificatesExpiry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :count, 1, type: :int64
  field :certificates, 2, repeated: true, type: :string

  field :state, 3,
    type: Google.Cloud.Certificatemanager.Logging.V1.CertificatesExpiry.State,
    enum: true

  field :expire_time, 4, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end