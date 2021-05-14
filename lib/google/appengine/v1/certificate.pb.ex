defmodule Google.Appengine.V1.ManagementStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MANAGEMENT_STATUS_UNSPECIFIED
          | :OK
          | :PENDING
          | :FAILED_RETRYING_NOT_VISIBLE
          | :FAILED_PERMANENT
          | :FAILED_RETRYING_CAA_FORBIDDEN
          | :FAILED_RETRYING_CAA_CHECKING

  field :MANAGEMENT_STATUS_UNSPECIFIED, 0

  field :OK, 1

  field :PENDING, 2

  field :FAILED_RETRYING_NOT_VISIBLE, 4

  field :FAILED_PERMANENT, 6

  field :FAILED_RETRYING_CAA_FORBIDDEN, 7

  field :FAILED_RETRYING_CAA_CHECKING, 8
end

defmodule Google.Appengine.V1.AuthorizedCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          display_name: String.t(),
          domain_names: [String.t()],
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          certificate_raw_data: Google.Appengine.V1.CertificateRawData.t() | nil,
          managed_certificate: Google.Appengine.V1.ManagedCertificate.t() | nil,
          visible_domain_mappings: [String.t()],
          domain_mappings_count: integer
        }

  defstruct [
    :name,
    :id,
    :display_name,
    :domain_names,
    :expire_time,
    :certificate_raw_data,
    :managed_certificate,
    :visible_domain_mappings,
    :domain_mappings_count
  ]

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :display_name, 3, type: :string
  field :domain_names, 4, repeated: true, type: :string
  field :expire_time, 5, type: Google.Protobuf.Timestamp
  field :certificate_raw_data, 6, type: Google.Appengine.V1.CertificateRawData
  field :managed_certificate, 7, type: Google.Appengine.V1.ManagedCertificate
  field :visible_domain_mappings, 8, repeated: true, type: :string
  field :domain_mappings_count, 9, type: :int32
end

defmodule Google.Appengine.V1.CertificateRawData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_certificate: String.t(),
          private_key: String.t()
        }

  defstruct [:public_certificate, :private_key]

  field :public_certificate, 1, type: :string
  field :private_key, 2, type: :string
end

defmodule Google.Appengine.V1.ManagedCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_renewal_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Appengine.V1.ManagementStatus.t()
        }

  defstruct [:last_renewal_time, :status]

  field :last_renewal_time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Appengine.V1.ManagementStatus, enum: true
end
