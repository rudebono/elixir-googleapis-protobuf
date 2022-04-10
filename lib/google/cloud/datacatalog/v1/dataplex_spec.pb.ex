defmodule Google.Cloud.Datacatalog.V1.DataplexSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t(),
          data_format: Google.Cloud.Datacatalog.V1.PhysicalSchema.t() | nil,
          compression_format: String.t(),
          project_id: String.t()
        }

  defstruct asset: "",
            data_format: nil,
            compression_format: "",
            project_id: ""

  field :asset, 1, type: :string
  field :data_format, 2, type: Google.Cloud.Datacatalog.V1.PhysicalSchema, json_name: "dataFormat"
  field :compression_format, 3, type: :string, json_name: "compressionFormat"
  field :project_id, 4, type: :string, json_name: "projectId"
end
defmodule Google.Cloud.Datacatalog.V1.DataplexFilesetSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataplex_spec: Google.Cloud.Datacatalog.V1.DataplexSpec.t() | nil
        }

  defstruct dataplex_spec: nil

  field :dataplex_spec, 1,
    type: Google.Cloud.Datacatalog.V1.DataplexSpec,
    json_name: "dataplexSpec"
end
defmodule Google.Cloud.Datacatalog.V1.DataplexTableSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_tables: [Google.Cloud.Datacatalog.V1.DataplexExternalTable.t()],
          dataplex_spec: Google.Cloud.Datacatalog.V1.DataplexSpec.t() | nil,
          user_managed: boolean
        }

  defstruct external_tables: [],
            dataplex_spec: nil,
            user_managed: false

  field :external_tables, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.DataplexExternalTable,
    json_name: "externalTables"

  field :dataplex_spec, 2,
    type: Google.Cloud.Datacatalog.V1.DataplexSpec,
    json_name: "dataplexSpec"

  field :user_managed, 3, type: :bool, json_name: "userManaged"
end
defmodule Google.Cloud.Datacatalog.V1.DataplexExternalTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system: Google.Cloud.Datacatalog.V1.IntegratedSystem.t(),
          fully_qualified_name: String.t(),
          google_cloud_resource: String.t(),
          data_catalog_entry: String.t()
        }

  defstruct system: :INTEGRATED_SYSTEM_UNSPECIFIED,
            fully_qualified_name: "",
            google_cloud_resource: "",
            data_catalog_entry: ""

  field :system, 1, type: Google.Cloud.Datacatalog.V1.IntegratedSystem, enum: true
  field :fully_qualified_name, 28, type: :string, json_name: "fullyQualifiedName"
  field :google_cloud_resource, 3, type: :string, json_name: "googleCloudResource"
  field :data_catalog_entry, 4, type: :string, json_name: "dataCatalogEntry"
end
