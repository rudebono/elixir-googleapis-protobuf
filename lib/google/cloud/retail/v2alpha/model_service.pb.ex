defmodule Google.Cloud.Retail.V2alpha.CreateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :model, 2, type: Google.Cloud.Retail.V2alpha.Model, deprecated: false
  field :dry_run, 3, type: :bool, json_name: "dryRun", deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Retail.V2alpha.Model, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.PauseModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ResumeModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.DeleteModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2alpha.TuneModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.CreateModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.TuneModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.TuneModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.ModelService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateModel, Google.Cloud.Retail.V2alpha.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Retail.V2alpha.GetModelRequest, Google.Cloud.Retail.V2alpha.Model

  rpc :PauseModel,
      Google.Cloud.Retail.V2alpha.PauseModelRequest,
      Google.Cloud.Retail.V2alpha.Model

  rpc :ResumeModel,
      Google.Cloud.Retail.V2alpha.ResumeModelRequest,
      Google.Cloud.Retail.V2alpha.Model

  rpc :DeleteModel, Google.Cloud.Retail.V2alpha.DeleteModelRequest, Google.Protobuf.Empty

  rpc :ListModels,
      Google.Cloud.Retail.V2alpha.ListModelsRequest,
      Google.Cloud.Retail.V2alpha.ListModelsResponse

  rpc :UpdateModel,
      Google.Cloud.Retail.V2alpha.UpdateModelRequest,
      Google.Cloud.Retail.V2alpha.Model

  rpc :TuneModel, Google.Cloud.Retail.V2alpha.TuneModelRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ModelService.Service
end