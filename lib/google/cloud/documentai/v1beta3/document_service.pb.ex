defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Documentai.V1beta3.Dataset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Documentai.V1beta3.GetDatasetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :visible_fields_only, 2, type: :bool, json_name: "visibleFieldsOnly"
end

defmodule Google.Cloud.Documentai.V1beta3.UpdateDatasetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_schema, 1,
    type: Google.Cloud.Documentai.V1beta3.DatasetSchema,
    json_name: "datasetSchema",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.documentai.v1beta3.DocumentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :UpdateDataset,
      Google.Cloud.Documentai.V1beta3.UpdateDatasetRequest,
      Google.Longrunning.Operation

  rpc :GetDatasetSchema,
      Google.Cloud.Documentai.V1beta3.GetDatasetSchemaRequest,
      Google.Cloud.Documentai.V1beta3.DatasetSchema

  rpc :UpdateDatasetSchema,
      Google.Cloud.Documentai.V1beta3.UpdateDatasetSchemaRequest,
      Google.Cloud.Documentai.V1beta3.DatasetSchema
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta3.DocumentService.Service
end