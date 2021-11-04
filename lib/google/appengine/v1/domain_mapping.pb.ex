defmodule Google.Appengine.V1.SslSettings.SslManagementType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SSL_MANAGEMENT_TYPE_UNSPECIFIED | :AUTOMATIC | :MANUAL

  field :SSL_MANAGEMENT_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Appengine.V1.ResourceRecord.RecordType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RECORD_TYPE_UNSPECIFIED | :A | :AAAA | :CNAME

  field :RECORD_TYPE_UNSPECIFIED, 0
  field :A, 1
  field :AAAA, 2
  field :CNAME, 3
end

defmodule Google.Appengine.V1.DomainMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          ssl_settings: Google.Appengine.V1.SslSettings.t() | nil,
          resource_records: [Google.Appengine.V1.ResourceRecord.t()]
        }

  defstruct [:name, :id, :ssl_settings, :resource_records]

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :ssl_settings, 3, type: Google.Appengine.V1.SslSettings, json_name: "sslSettings"

  field :resource_records, 4,
    repeated: true,
    type: Google.Appengine.V1.ResourceRecord,
    json_name: "resourceRecords"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.SslSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_id: String.t(),
          ssl_management_type: Google.Appengine.V1.SslSettings.SslManagementType.t(),
          pending_managed_certificate_id: String.t()
        }

  defstruct [:certificate_id, :ssl_management_type, :pending_managed_certificate_id]

  field :certificate_id, 1, type: :string, json_name: "certificateId"

  field :ssl_management_type, 3,
    type: Google.Appengine.V1.SslSettings.SslManagementType,
    enum: true,
    json_name: "sslManagementType"

  field :pending_managed_certificate_id, 4,
    type: :string,
    json_name: "pendingManagedCertificateId"

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1.ResourceRecord do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          rrdata: String.t(),
          type: Google.Appengine.V1.ResourceRecord.RecordType.t()
        }

  defstruct [:name, :rrdata, :type]

  field :name, 1, type: :string
  field :rrdata, 2, type: :string
  field :type, 3, type: Google.Appengine.V1.ResourceRecord.RecordType, enum: true

  def transform_module(), do: nil
end
