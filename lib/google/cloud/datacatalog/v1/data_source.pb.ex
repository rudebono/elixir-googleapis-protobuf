defmodule Google.Cloud.Datacatalog.V1.DataSource.Service do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SERVICE_UNSPECIFIED | :CLOUD_STORAGE | :BIGQUERY

  field :SERVICE_UNSPECIFIED, 0
  field :CLOUD_STORAGE, 1
  field :BIGQUERY, 2
end

defmodule Google.Cloud.Datacatalog.V1.DataSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Cloud.Datacatalog.V1.DataSource.Service.t(),
          resource: String.t()
        }

  defstruct [:service, :resource]

  field :service, 1, type: Google.Cloud.Datacatalog.V1.DataSource.Service, enum: true
  field :resource, 2, type: :string

  def transform_module(), do: nil
end
