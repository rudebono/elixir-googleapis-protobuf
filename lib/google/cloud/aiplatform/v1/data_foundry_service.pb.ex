defmodule Google.Cloud.Aiplatform.V1.OutputFieldSpec.FieldType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FIELD_TYPE_UNSPECIFIED, 0
  field :CONTENT, 1
  field :TEXT, 2
  field :IMAGE, 3
  field :AUDIO, 4
end

defmodule Google.Cloud.Aiplatform.V1.GenerateSyntheticDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :strategy, 0

  field :task_description, 3,
    type: Google.Cloud.Aiplatform.V1.TaskDescriptionStrategy,
    json_name: "taskDescription",
    oneof: 0

  field :location, 1, type: :string, deprecated: false
  field :count, 2, type: :int32, deprecated: false

  field :output_field_specs, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.OutputFieldSpec,
    json_name: "outputFieldSpecs",
    deprecated: false

  field :examples, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SyntheticExample,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SyntheticField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
  field :content, 2, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SyntheticExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SyntheticField,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.OutputFieldSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
  field :guidance, 2, type: :string, deprecated: false

  field :field_type, 3,
    type: Google.Cloud.Aiplatform.V1.OutputFieldSpec.FieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.TaskDescriptionStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :task_description, 1, type: :string, json_name: "taskDescription", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerateSyntheticDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :synthetic_examples, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SyntheticExample,
    json_name: "syntheticExamples"
end

defmodule Google.Cloud.Aiplatform.V1.DataFoundryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.DataFoundryService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateSyntheticData,
      Google.Cloud.Aiplatform.V1.GenerateSyntheticDataRequest,
      Google.Cloud.Aiplatform.V1.GenerateSyntheticDataResponse
end

defmodule Google.Cloud.Aiplatform.V1.DataFoundryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.DataFoundryService.Service
end
