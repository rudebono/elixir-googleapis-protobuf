defmodule Google.Cloud.Retail.V2.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model, 2, type: Google.Cloud.Retail.V2.Model, deprecated: false
  field :dry_run, 3, type: :bool, json_name: "dryRun", deprecated: false
end

defmodule Google.Cloud.Retail.V2.UpdateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Retail.V2.Model, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.PauseModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ResumeModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Retail.V2.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Retail.V2.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2.TuneModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.CreateModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.TuneModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2.TuneModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2.ModelService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateModel, Google.Cloud.Retail.V2.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Retail.V2.GetModelRequest, Google.Cloud.Retail.V2.Model

  rpc :PauseModel, Google.Cloud.Retail.V2.PauseModelRequest, Google.Cloud.Retail.V2.Model

  rpc :ResumeModel, Google.Cloud.Retail.V2.ResumeModelRequest, Google.Cloud.Retail.V2.Model

  rpc :DeleteModel, Google.Cloud.Retail.V2.DeleteModelRequest, Google.Protobuf.Empty

  rpc :ListModels,
      Google.Cloud.Retail.V2.ListModelsRequest,
      Google.Cloud.Retail.V2.ListModelsResponse

  rpc :UpdateModel, Google.Cloud.Retail.V2.UpdateModelRequest, Google.Cloud.Retail.V2.Model

  rpc :TuneModel, Google.Cloud.Retail.V2.TuneModelRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2.ModelService.Service
end
