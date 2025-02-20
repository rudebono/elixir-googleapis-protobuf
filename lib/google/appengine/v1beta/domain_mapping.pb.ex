defmodule Google.Appengine.V1beta.SslSettings.SslManagementType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTOMATIC, 0
  field :MANUAL, 1
end

defmodule Google.Appengine.V1beta.ResourceRecord.RecordType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :A, 0
  field :AAAA, 1
  field :CNAME, 2
end

defmodule Google.Appengine.V1beta.DomainMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :ssl_settings, 3, type: Google.Appengine.V1beta.SslSettings, json_name: "sslSettings"

  field :resource_records, 4,
    repeated: true,
    type: Google.Appengine.V1beta.ResourceRecord,
    json_name: "resourceRecords"
end

defmodule Google.Appengine.V1beta.SslSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :certificate_id, 1, type: :string, json_name: "certificateId"

  field :ssl_management_type, 3,
    type: Google.Appengine.V1beta.SslSettings.SslManagementType,
    json_name: "sslManagementType",
    enum: true

  field :pending_managed_certificate_id, 4,
    type: :string,
    json_name: "pendingManagedCertificateId"
end

defmodule Google.Appengine.V1beta.ResourceRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :rrdata, 2, type: :string
  field :type, 3, type: Google.Appengine.V1beta.ResourceRecord.RecordType, enum: true
end
