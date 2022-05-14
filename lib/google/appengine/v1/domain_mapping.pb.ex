defmodule Google.Appengine.V1.SslSettings.SslManagementType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SSL_MANAGEMENT_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end
defmodule Google.Appengine.V1.ResourceRecord.RecordType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RECORD_TYPE_UNSPECIFIED, 0
  field :A, 1
  field :AAAA, 2
  field :CNAME, 3
end
defmodule Google.Appengine.V1.DomainMapping do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :ssl_settings, 3, type: Google.Appengine.V1.SslSettings, json_name: "sslSettings"

  field :resource_records, 4,
    repeated: true,
    type: Google.Appengine.V1.ResourceRecord,
    json_name: "resourceRecords"
end
defmodule Google.Appengine.V1.SslSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :certificate_id, 1, type: :string, json_name: "certificateId"

  field :ssl_management_type, 3,
    type: Google.Appengine.V1.SslSettings.SslManagementType,
    json_name: "sslManagementType",
    enum: true

  field :pending_managed_certificate_id, 4,
    type: :string,
    json_name: "pendingManagedCertificateId"
end
defmodule Google.Appengine.V1.ResourceRecord do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :rrdata, 2, type: :string
  field :type, 3, type: Google.Appengine.V1.ResourceRecord.RecordType, enum: true
end
