defmodule Google.Cloud.Retail.V2beta.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model, 2, type: Google.Cloud.Retail.V2beta.Model, deprecated: false
  field :dry_run, 3, type: :bool, json_name: "dryRun", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.UpdateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Retail.V2beta.Model, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.PauseModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ResumeModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2beta.TuneModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.CreateModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2beta.TuneModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2beta.TuneModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2beta.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.ModelService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateModel, Google.Cloud.Retail.V2beta.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Retail.V2beta.GetModelRequest, Google.Cloud.Retail.V2beta.Model

  rpc :PauseModel, Google.Cloud.Retail.V2beta.PauseModelRequest, Google.Cloud.Retail.V2beta.Model

  rpc :ResumeModel,
      Google.Cloud.Retail.V2beta.ResumeModelRequest,
      Google.Cloud.Retail.V2beta.Model

  rpc :DeleteModel, Google.Cloud.Retail.V2beta.DeleteModelRequest, Google.Protobuf.Empty

  rpc :ListModels,
      Google.Cloud.Retail.V2beta.ListModelsRequest,
      Google.Cloud.Retail.V2beta.ListModelsResponse

  rpc :UpdateModel,
      Google.Cloud.Retail.V2beta.UpdateModelRequest,
      Google.Cloud.Retail.V2beta.Model

  rpc :TuneModel, Google.Cloud.Retail.V2beta.TuneModelRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2beta.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ModelService.Service
end