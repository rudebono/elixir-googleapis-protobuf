defmodule Google.Appengine.V1beta.ManagementStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MANAGEMENT_STATUS_UNSPECIFIED, 0
  field :OK, 1
  field :PENDING, 2
  field :FAILED_RETRYING_NOT_VISIBLE, 4
  field :FAILED_PERMANENT, 6
  field :FAILED_RETRYING_CAA_FORBIDDEN, 7
  field :FAILED_RETRYING_CAA_CHECKING, 8
end

defmodule Google.Appengine.V1beta.AuthorizedCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
  field :domain_names, 4, repeated: true, type: :string, json_name: "domainNames"
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  field :certificate_raw_data, 6,
    type: Google.Appengine.V1beta.CertificateRawData,
    json_name: "certificateRawData"

  field :managed_certificate, 7,
    type: Google.Appengine.V1beta.ManagedCertificate,
    json_name: "managedCertificate"

  field :visible_domain_mappings, 8,
    repeated: true,
    type: :string,
    json_name: "visibleDomainMappings"

  field :domain_mappings_count, 9, type: :int32, json_name: "domainMappingsCount"
end

defmodule Google.Appengine.V1beta.CertificateRawData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :public_certificate, 1, type: :string, json_name: "publicCertificate"
  field :private_key, 2, type: :string, json_name: "privateKey"
end

defmodule Google.Appengine.V1beta.ManagedCertificate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :last_renewal_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastRenewalTime"
  field :status, 2, type: Google.Appengine.V1beta.ManagementStatus, enum: true
end